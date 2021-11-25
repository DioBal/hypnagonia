class_name SingleEncounter
extends Reference

var description: String
var journal_art
var shader_params: Dictionary

func begin() -> void:
	globals.current_encounter = self

func game_over() -> void:
	cfc.NMAP.clear()
	globals.journal.display_loss()

func prepare_journal_art(encounter: Dictionary) -> void:
	var tex = encounter.get("journal_art")
	if tex:
		journal_art = ImageTexture.new();
		var image = tex.get_data()
		journal_art.create_from_image(image)


func prepare_shader_art(shader: Shader, _shader_params: Dictionary) -> void:
	shader_params = _shader_params
	journal_art = shader
