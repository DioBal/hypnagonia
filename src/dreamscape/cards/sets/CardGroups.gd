class_name CardGroupDefinitions
extends Reference

const SET = "Core Set"

const EGO := {
	# Archetypes: Untouchable/Calm
	"Flyer": {
		"Anxiety": 5,
		"Starting Cards": [
			"Untouchable",
			"Assault",
			"Confidence",
		],
		"Commons": [
			"Untouchable",
			"Dive-in",
			"Overview",
			"Drag and Drop",
			"Loop de loop",
		],
		"Uncommons": [
			"Whirlwind",
			"Safety of Air",
			"Swoop",
			"Barrel Through",
			"Running Start",
		],
		"Rares": [
			"Master of Skies",
			"Zen of Flight",
		]
	},
	# Archetype: 
	"Warrior": {
		"Anxiety": 5,
		"Starting Cards": [
			"War Paint",
		],
		"Commons": [
			"War Paint",
		],
		"Uncommons": [
		],
		"Rares": []
	},
	# Archetype: 
	"Runner": {
		"Anxiety": 5,
		"Starting Cards": [
		],
		"Commons": [
			"Rapid Encirclement",
		],
		"Uncommons": [
			"Barrel Through",
		],
		"Rares": []
	},
}

const DISPOSITION := {
	# Archetypes: Confidence/Doubt
	"Fearless": {
		"Anxiety": 5,
		"Starting Cards": [
			"Confidence",
			"Confidence",
			"Nothing to Fear",
		],
		"Commons": [
			"Intimidate",
			"Towering Presence",
			"Courage",
			"Solid Understanding",
			"Confident Slap",
		],
		"Uncommons": [
			"Nothing to Fear",
			"Barrel Through",
			"Cheeky Approach",
			"No Second Thoughts",
			"Point out the Weakness",
		],
		"Rares": [
			"Laugh at Danger",
			"Unassailable",
			"Boast",
		]
	},
	# Archetypes: Self-harm
	"Coward": {
		"Anxiety": -5,
	}
}

const INSTRUMENT := {
	# Archetype: Confusion
	"Rubber Chicken": {
		"Starting Cards": [
			"Assault",
			"Assault",
			"Noisy Whip",
		],
		"Commons": [
			"Confounding Movements",
			"Noisy Whip",
			"Headless",
			"Ventriloquism",
			"unnamed_card_1",
			"unnamed_card_3",
		],
		"Uncommons": [
			"Rubber Eggs",
			"The Joke",
			"unnamed_card_2",
			"Absurdity Unleashed",
		],
		"Rares": [
			"Nunclucks",
			"Utterly Ridiculous",
		]
	},
}

const INJUSTICE := {
	"Abusive Relationship": {
		"Anxiety": -5,
		"Starting Cards": [
			"Inner Justice",
		],
		"Commons": [],
		"Uncommons": [],
		"Rares": []
	},
}
