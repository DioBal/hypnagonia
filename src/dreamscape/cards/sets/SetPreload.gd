class_name SetPreload
extends Node


const CARD_SETS := [
	preload("res://src/dreamscape/cards/sets/SetDefinition_Core.gd"),
	preload("res://src/dreamscape/cards/sets/SetDefinition_Enemies.gd"),
	preload("res://src/dreamscape/cards/sets/SetDefinition_Perturbations.gd"),
]

const CARD_SCRIPTS := [
	preload("res://src/dreamscape/cards/sets/SetScripts_Core.gd"),
	preload("res://src/dreamscape/cards/sets/SetScripts_Enemies.gd"),
	preload("res://src/dreamscape/cards/sets/SetScripts_Perturbations.gd"),
]
