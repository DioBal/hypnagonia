extends Artifact

func _ready() -> void:
	if is_active and effect_context == ArtifactDefinitions.EffectContext.BATTLE:
		if not cfc.are_all_nodes_mapped:
			yield(cfc, "all_nodes_mapped")
		cfc.NMAP.board.connect("battle_begun", self, "_on_battle_start")


func _on_battle_start():
	if not _activate():
		return
	var script = [
		{
			"name": "apply_effect",
			"effect_name": Terms.ACTIVE_EFFECTS.vulnerable.name,
			"subject": "boardseek",
			"subject_count": "all",
			"filter_state_seek": [{
				"filter_group": "EnemyEntities",
			},],
			"modification": ArtifactDefinitions.StartingVulnerable.amounts.effect_stacks,
			"tags": ["Curio"],
		},
	]
	execute_script(script)


func _on_scripting_completed(_artifact, _sceng) -> void:
	_send_trigger_signal()
