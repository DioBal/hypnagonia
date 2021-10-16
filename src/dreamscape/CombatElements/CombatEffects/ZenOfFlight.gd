extends CombatEffect

func _on_player_turn_ended(_turn: Turn) -> void:
	var multiplier = 1
	if upgrade == "masterful":
		multiplier = 2
	var heal_amount : int = stacks * multiplier
	if cfc.NMAP.board.dreamer.active_effects.get_effect_stacks(Terms.ACTIVE_EFFECTS.impervious.name):
		 heal_amount += stacks * multiplier
	var script = [{
		"name": "modify_damage",
		"subject": "self",
		"amount": -heal_amount,
		"tags": ["Heal"],
	}]
	execute_script(script)
