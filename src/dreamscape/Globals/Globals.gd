extends Node

const PLAYER_COMBAT_ENTITY_SIZE = Vector2(120,120)

signal encounter_selected(encounter)

var player: Player
var encounters: SingleRun
var current_encounter: SingleEncounter setget set_current_encounter
var journal: Journal
var music: Music
# I use this to keep track of which journal texts I haven't used yet in this run
# to avoid writing always the same thing
var unused_journal_texts := {}
#var utils := DeckbuilderUtils.new()
var card_back_texture_selection := 0
var run_unlocks := {}
# For Unit Testing
var test_flags := {
	### REFERENCES ###
#	# Loads the initial player deck to he board deck
#	"test_initial_hand": false, 
#	# prevents initial hand being drawn
#	"no_refill": true, 
#	# prevents starting artifacts being added
#	"disable_starting_artifacts": false, 
#	# prevents delay at end of turn
#	"no_end_turn_delay": true, 
#	# disables random board background
#	"disable_board_background": true, 
#	# disables board journal fade out
#	"no_journal_fade": true, 
#	# Custom curio definitions for testing
#	"artifact_defintions": {}, 
#	# Custom memory definitions for testing
#	"memory_defintions": {}, 
}


# Test setup. This should happen at game start
func _ready() -> void:
	music = Music.new()
	player = Player.new()
	encounters = SingleRun.new()


func reset() -> void:
	player = Player.new()
	encounters = SingleRun.new()
	unused_journal_texts.clear()
	current_encounter = null
	journal = null


func quit_to_main() -> void:
# warning-ignore:return_value_discarded
	get_tree().change_scene(CFConst.PATH_CUSTOM + 'MainMenu/MainMenu.tscn')
	cfc.quit_game()
	reset()


func hide_all_previews() -> void:
	cfc.hide_all_previews()
	for artifact_preview_node in cfc.get_tree().get_nodes_in_group("artifact_preview"):
		artifact_preview_node.hide_preview_artifact()

func set_current_encounter(value) -> void:
	current_encounter = value
	emit_signal("encounter_selected", value)

func _exit_tree():
	print("Hypnagonia Exited Gracefully.")
