extends "res://src/core/OverridableUtils.gd"

const _DCARD_SELECT_SCENE_FILE = CFConst.PATH_CUSTOM + "SelectionWindow.tscn"
const _DCARD_SELECT_SCENE = preload(_DCARD_SELECT_SCENE_FILE)

func get_subjects(subject_request, _stored_integer: int = 0) -> Array:
	var ret_array := []
	match subject_request:
		"dreamer":
			ret_array = [cfc.NMAP.board.dreamer]
	return(ret_array)


# Populates the info panels under the card, when it is shown in the
# viewport focus or deckbuilder
func populate_info_panels(card: Card, focus_info: DetailPanels) -> void:
	.populate_info_panels(card, focus_info)
	if card.deck_card_entry:
		if card.deck_card_entry.upgrade_threshold > 0:
			var upgrade_format := {
				"current": str(card.deck_card_entry.upgrade_progress),
				"threshold": str(card.deck_card_entry.upgrade_threshold),
			}
			focus_info.add_info(
					"Upgrade Progress",
					"Upgrade Progress: {current}/{threshold}".format(upgrade_format), 
					preload("res://src/dreamscape/InfoPanel.tscn"),
					true)
		if card.deck_card_entry.is_scarred():
			focus_info.add_info(
					"Scarred",
					"Scarred ([img=24x24]res://assets/card_front/scar-wound.png[/img]): "\
					+ "This card has been permanently degraded in some way.\n"\
					+ "If a numerical property is affected, it will be highlighted red.",
					preload("res://src/dreamscape/InfoPanel.tscn"),
					true)
		if card.deck_card_entry.is_enhanced():
			focus_info.add_info(
					"Enhanced",
					"Enhanced ([img=24x24]res://assets/card_front/sun.png[/img]): "\
					+ "This card has been permanently iproved in some way.\n"\
					+ "If a numerical property is affected, it will be highlighted greem.",
					preload("res://src/dreamscape/InfoPanel.tscn"),
					true)
	var added_effects := []
	var bbcode_format := Terms.get_bbcode_formats(18)
	if card.get_property("_effects_info"):
		var effects_info : Dictionary = card.get_property("_effects_info")
		for effect_name in effects_info:
			added_effects.append(effect_name)
			var effect_entry = Terms.get_term_entry(effect_name, 'description')
			var entity_type: String = effects_info[effect_entry.name]
			var format = Terms.COMMON_FORMATS[entity_type].duplicate()
			format["effect_name"] = effect_entry.name
			format["effect_icon"] = "[img=24x24]" + effect_entry.rich_text_icon + "[/img]"
			format["amount"] = "1"
			format["double_amount"] = "2"
			format["triple_amount"] = "3"
			format["half_amount"] = "0.5"
			focus_info.add_info(
					effect_entry.name,
					effect_entry.description.format(format).\
						format(bbcode_format), preload("res://src/dreamscape/EffectInfoPanel.tscn"))
	var tags : Array = card.get_property("Tags")
	for tag in tags:
		if tag in added_effects:
			continue
		var tag_entry : Dictionary = Terms.get_term_entry(tag, 'generic_description')
		focus_info.add_info(
				tag_entry.name,
				tag_entry.generic_description.format(bbcode_format), preload("res://src/dreamscape/InfoPanel.tscn"))

func select_card(
		card_list: Array,
		selection_count: int,
		selection_type: String,
		selection_optional: bool,
		parent_node,
		card_select_scene = _DCARD_SELECT_SCENE):
	var selected_cards = .select_card(
		card_list,
		selection_count,
		selection_type,
		selection_optional,
		parent_node,
		card_select_scene)
	if selected_cards is GDScriptFunctionState: # Still working.
		selected_cards = yield(selected_cards, "completed")
	return(selected_cards)

# In Hypnagonia, the default card pool during each run, is always limited to the deck groups
# currently in use by the player
func _get_card_pool() -> Dictionary:
	var card_names_list := []
	for archetype in globals.player.deck_groups.values():
		card_names_list += Aspects.get_all_cards_in_archetype(archetype)
	# Add all upgrades in the card_names list
	for card_name in card_names_list:
		card_names_list += cfc.card_definitions[card_name].get("_upgrades", [])
	# Retrieve the definitions for all card_names
	var card_pool: Dictionary
	for card_name in card_names_list:
		card_pool[card_name] = cfc.card_definitions[card_name]
	return(card_pool)
