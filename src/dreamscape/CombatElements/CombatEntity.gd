class_name CombatEntity
extends VBoxContainer

const INCOMING_SIGNIFIER_SCENE = preload("res://src/dreamscape/CombatElements/IncomingSignifier.tscn")

export(StreamTexture) var defence_texture: StreamTexture
export(StreamTexture) var character_art_texture: StreamTexture

# warning-ignore:unused_signal
signal effect_modified(entity,trigger,details)
signal entity_attacked(entity, amount, trigger, tags)
signal entity_damaged(entity, amount, trigger, tags)
signal entity_healed(entity, amount, trigger, tags)
signal entity_defence_modified(entity, amount, trigger, tags)
signal entity_damage_blocked(entity, amount, trigger, tags)
signal entity_killed(final_damage, health)
signal entity_health_modified(entity, amount, trigger, tags)
signal death_animation_finished(entity)


onready var art := $Art
onready var collision_shape := $Art/Area2D/CollisionShape2D
onready var area2d := $Art/Area2D
onready var entity_texture :=  $Art/Texture
onready var highlight := $Art/Highlight
onready var _health_stats := $HBC
onready var health_label : Label = $HBC/Health
onready var name_label : Label = $Name
onready var defence_icon : TextureRect = $HBC/Defence/Icon
onready var defence_label : Label = $HBC/Defence/Amount
onready var active_effects := $ActiveEffects
onready var incoming := $CenterContainer/Incoming
onready var description_popup := $Description
onready var description_label := $Description/Label


var damage : int setget set_damage
var health : int setget set_health
var defence : int setget set_defence
var canonical_name: String
var type: String
var entity_type: String
var entity_size : Vector2
var character_art: String
var is_dead := false
var shader_progress := 0.0

# Holding all the details from the CombatEntity, in case
# we need to retrieve some extra ones, depending on the type
var _properties : Dictionary

# Typically used during
# an [execute_scripts()](ScriptingEngine#execute_scripts] task.
var temp_properties_modifiers := {}

func setup(entity_name: String, properties: Dictionary) -> void:
	canonical_name = entity_name
	name = entity_name
	health = properties['Health']
	type = properties['Type']
	damage = properties.get('Damage', 0)
	_properties = properties
	entity_size = Vector2(properties['_texture_size_x'],properties['_texture_size_y'])
	character_art = properties.get('_character_art', 'nobody')


func _ready() -> void:
	get_viewport().connect("size_changed", self, '_on_viewport_resized')
	_set_entity_size()
	name_label.text = canonical_name
	_update_health_label()
	active_effects.combat_entity = self
	highlight.entity_art = entity_texture
	_set_texture(defence_icon, defence_texture)
	if _properties.has('_texture'):
		_set_texture(entity_texture, _properties["_texture"])
	elif character_art_texture:
		_set_texture(entity_texture, character_art_texture)


func _set_texture(node: Node, stream: StreamTexture) -> void:
		node.texture = CFUtils.convert_texture_to_image(stream, true)


func _process(delta: float) -> void:
	if is_dead and entity_texture.material as ShaderMaterial:
		shader_progress += delta
		entity_texture.material.set_shader_param(
				'progress', shader_progress)
		for node in [name_label, _health_stats, active_effects, incoming]:
			if node.modulate.a > 0:
				node.modulate.a = 0
		if shader_progress > 0.9:
			cfc.flush_cache()
			call_deferred("queue_free")
			emit_signal("death_animation_finished", self)


func set_defence(value: int) -> void:
	defence = value
	_update_health_label()


func set_damage(value: int) -> void:
	if value < 0:
		value = 0
	damage = value
	if damage >= health:
		die()
	else:
		_update_health_label()


func set_health(value: int) -> void:
	if value < 0:
		value = 0
	health = value
	if damage >= health:
		die()
	else:
		_update_health_label()


func die() -> void:
	# We add a two frame wait and another check, in case there's an effect which will
	# revive this entity when it triggers its death
	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")
	if damage >= health:
		is_dead = true
		emit_signal("entity_killed", damage, health)
		entity_texture.material = ShaderMaterial.new()
		entity_texture.material.shader = CFConst.REMOVE_FROM_GAME_SHADER
		cfc.flush_cache()


func modify_damage(amount: int, dry_run := false, tags := ["Manual"], trigger = null) -> int:
	var retcode : int = CFConst.ReturnCode.CHANGED
	if damage + defence + amount < 0 and dry_run:
		retcode = CFConst.ReturnCode.FAILED
	elif amount == 0 and dry_run:
		retcode = CFConst.ReturnCode.OK
	if not dry_run:
		if amount > 0 and "Attack" in tags:
			emit_signal("entity_attacked", self, amount, trigger, tags)
		if defence > 0\
				and ("Attack" in tags or "Blockable" in tags)\
				and not "Unblockable" in tags:
			if amount >= defence:
				amount -= defence
				emit_signal("entity_damage_blocked", self, defence, trigger, tags)
				defence = 0
			else:
				defence -= amount
				emit_signal("entity_damage_blocked", self, amount, trigger, tags)
				amount = 0
		set_damage(damage + amount)
		if amount > 0:
			emit_signal("entity_damaged", self, amount, trigger, tags)
		elif amount < 0:
			emit_signal("entity_healed", self, amount, trigger, tags)
	return(retcode)


func modify_defence(
			amount: int,
			set_to_mod := false,
			dry_run := false,
			tags := ["Manual"],
			trigger: CombatEntity = null) -> int:
	# warning-ignore:unused_variable
	var retcode: int = CFConst.ReturnCode.CHANGED
	if set_to_mod and defence == amount:
		retcode = CFConst.ReturnCode.OK
	else:
		if not set_to_mod and defence + amount < 0:
			retcode = CFConst.ReturnCode.FAILED
			amount = -defence
		if set_to_mod and amount < 0:
			retcode = CFConst.ReturnCode.FAILED
			amount = 0
		if not dry_run:
			if set_to_mod:
				amount = amount - defence
			set_defence(defence + amount)
			emit_signal("entity_defence_modified", self, amount, trigger, tags)
	return(retcode)


func modify_health(
		amount: int,
		set_to_mod := false,
		dry_run := false,
		tags := ["Manual"],
		trigger = null) -> int:
	var retcode : int = CFConst.ReturnCode.CHANGED
	if set_to_mod and health == amount:
		retcode = CFConst.ReturnCode.OK
	else:
		if not set_to_mod and health + amount < 0:
			retcode = CFConst.ReturnCode.FAILED
			amount = -health
		if set_to_mod and amount < 0:
			retcode = CFConst.ReturnCode.FAILED
			amount = 0
		if not dry_run:
			if set_to_mod:
				amount = amount - health
			set_health(health + amount)
			emit_signal("entity_health_modified", self, amount, trigger, tags)
	return(retcode)


func get_class() -> String:
	return("CombatEntity")


func show_predictions(value: int, image = null) -> void:
	var incoming_node = INCOMING_SIGNIFIER_SCENE.instance()
	if image:
		incoming_node.icon_texture = image
	incoming.add_child(incoming_node)
	incoming_node.get_node("Label").text = str(value)


func clear_predictions() -> void:
	for node in incoming.get_children():
		node.queue_free()
	active_effects.sceng_snapshot_modifiers.clear()


# The entities do not have starting health which decreases as they take damage
# Rather they have a damage meter which increases until it hits their max health.
func _update_health_label() -> void:
	health_label.text = str(damage) + '/' + str(health)
	defence_label.text = str(defence)
	$HealthBar.max_value = health
	$HealthBar.value = damage


func get_property(property_name: String):
	return(_properties.get(property_name))


func _on_Defence_mouse_entered() -> void:
	var description_text := "{defence_name}: It is removed before {health} is accumulated."\
			+ "\nIt is removed at the start of the {entity}'s turn"
	_show_description_popup(description_text, defence_label)


func _on_Health_mouse_entered() -> void:
	var defeat_blurb: String
	if entity_type == Terms.PLAYER:
		defeat_blurb = "When your dreamer accumulates equal or higher than their total, "\
						+ "they wake up and the run is ended."
	else:
		defeat_blurb = "When this torment accumulates equal or higher than its total, "\
						+ "they are overcome and removed from this Ordeal."
	var description_text := "{health} (accumulated/total): {damage_taken_verb}"\
			+ " from {enemy} {opponent_actions}.\n" + defeat_blurb
	_show_description_popup(description_text, health_label)


func _show_description_popup(description_text: String, popup_anchor: Node) -> void:
	var format = Terms.COMMON_FORMATS[entity_type].duplicate()
	description_label.bbcode_text = description_text.format(format).format(Terms.get_bbcode_formats(18))
	description_popup.visible = true
	description_popup.rect_size = Vector2(0,0)
	description_popup.rect_global_position = popup_anchor.rect_global_position + Vector2(20,-description_label.rect_size.y)


func _on_CombatSingifier_mouse_exited() -> void:
	description_popup.visible = false


func _on_Description_mouse_exited() -> void:
	description_popup.visible = false


func _on_Art_mouse_exited() -> void:
	description_popup.visible = false


func _on_Art_mouse_entered() -> void:
	var art_text := "Character art by: " + character_art
	_show_description_popup(art_text, art)


func _on_player_turn_started(_turn: Turn) -> void:
	if entity_type == Terms.PLAYER:
		var fortify = active_effects.get_effect(Terms.ACTIVE_EFFECTS.fortify.name)
		if fortify:
			fortify.set_stacks(fortify.stacks / 2, ["Turn Decrease"])
		else:
			set_defence(0)


func _on_player_turn_ended(_turn: Turn) -> void:
	pass


func _on_enemy_turn_started(_turn: Turn) -> void:
	if entity_type == Terms.ENEMY:
		var fortify = active_effects.get_effect(Terms.ACTIVE_EFFECTS.fortify.name)
		if fortify:
			fortify.stacks -= 1
		else:
			set_defence(0)


func _on_enemy_turn_ended(_turn: Turn) -> void:
	pass


func _set_entity_size() -> void:
	var final_size = entity_size * cfc.curr_scale
	art.rect_min_size = final_size
	collision_shape.shape.extents = final_size / 2
	area2d.position = final_size / 2
	highlight.rect_min_size = final_size + Vector2(1,1)

func _on_viewport_resized() -> void:
	_set_entity_size()
