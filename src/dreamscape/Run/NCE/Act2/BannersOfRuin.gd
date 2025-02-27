extends NonCombatEncounter

var secondary_choices := {
		'mouse': '[Mouse]: Lose 10% max {anxiety}. Find {curio}.',
		'bear': '[Bear]: Gain 10% max {anxiety}.',
		'hyena': '[Hyena]: Gain a {hyena}.',
	}

var nce_result_fluff := {
		'mouse': "I was the smallest of the bunch, and as such I had to rely on other skills."\
			+ ", I played the role of the tracker.",
		'bear': "As the largest in the resistance, I was the shield which protected my mates.",
		'hyena': "I relied on my keen skills to disrupt and pilfer what we needed",
	}


func _init():
	description = "I was in a anthropomorphic mammal in some sort of medieval fantasy world."\
			+ "I was part of the resistance and I had to break into a fortified city.\n"\
			+ "I am trying to recall what mammal exactly I was.."

func begin() -> void:
	.begin()
	var scformat = {
		"hyena": _prepare_card_popup_bbcode("Hyena", "a special card"),
		"curio": _prepare_artifact_popup_bbcode("BetterRareChance", "some interesting cheese")
	}
	for c in secondary_choices:
		secondary_choices[c] = secondary_choices[c].format(scformat).format(Terms.get_bbcode_formats(18))
	globals.journal.add_nested_choices(secondary_choices)

func continue_encounter(key) -> void:
	match key:
		"mouse":
			# warning-ignore:narrowing_conversion
			globals.player.health *= 0.9
			# warning-ignore:return_value_discarded
			globals.player.add_artifact("BetterRareChance")
		"bear":
			# warning-ignore:narrowing_conversion
			globals.player.health *= 1.1
		"hyena":
			# warning-ignore:return_value_discarded
			globals.player.deck.add_new_card("Hyena")
	end()
	globals.journal.display_nce_rewards(nce_result_fluff[key])
