# Gives three choices, paid with released pathos to get some rewards

extends NonCombatEncounter

const JOURNAL_CUSTOM_ENTRY = preload("res://src/dreamscape/Overworld/CustomEntries/CustomDraft.tscn")
const JOURNAL_DRAFT_SCRIPT = preload("res://src/dreamscape/Overworld/CustomEntries/NCE_SubconsciousProcessing.gd")
const DAMAGES := {
	'comment': 0,
	'debug': 7,
	'refactor': 15,
}
const DRAFTS := {
	'comment': 1,
	'debug': 2,
	'refactor': 3,
}

# TODO: Fluff
var secondary_choices := {
		'comment': '[Comment out]: draft {draft_amount} {understanding} card.',
		'debug': '[Debug]: draft {draft_amount} {understanding} cards. Gain {dmg_amount} {anxiety}',
		'refactor': '[Refactor]: draft {draft_amount} {understanding} cards. Gain {dmg_amount} {anxiety}',
	}

var nce_result_fluff := {
		'comment': "I triangulated the failing area and just commented out the whole thing.\n"\
			+ "I might fail to process subconsciously what is going on, but I also don't risk breaking something.",
		'debug': "I got down at started tracing the failing functions. After a few trials and errors I got it running again.",
		'refactor': "This thing was a mess! I cracked my knuckles and got down to redesign it from scratch.",
	}

func _init():
	# TODO: Fluff
	description = "I was in front of a computer and I was programming something."\
			+ "As I perused the code, I realized it was my own unconscious processes "\
			+ "and even worse, there was a bug!\n"\

func begin() -> void:
	.begin()
	for type in secondary_choices:
		var scformat := {
			"dmg_amount": DAMAGES[type],
			"draft_amount": DRAFTS[type]
		}
		secondary_choices[type] = secondary_choices[type].format(Terms.get_bbcode_formats(18)).format(scformat)
	globals.journal.add_nested_choices(secondary_choices)

func continue_encounter(key) -> void:
	var draft_scene = JOURNAL_CUSTOM_ENTRY.instance()
	draft_scene.script = JOURNAL_DRAFT_SCRIPT
	draft_scene.description_text = nce_result_fluff[key]
	globals.player.damage += DAMAGES[key]
	draft_scene.draft_amount = DRAFTS[key]
	globals.journal.add_custom_entry(draft_scene)
	globals.journal.display_nce_rewards('')
	end()
