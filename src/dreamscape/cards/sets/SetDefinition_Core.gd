#class_name CoreDefinitions
extends Reference

const SET = "Core Set"
const CARDS := {
	"Confidence": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 5
		},
		"_upgrade_threshold": 5,
		"_upgrades": [
			"+ Confidence +",
			"@ Confidence @",
			"- Confidence -",
		],
	},
	"+ Confidence +": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 8
		},
		"_is_upgrade": true,
	},
	"@ Confidence @": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 4
		},
		"_is_upgrade": true,
	},
	"- Confidence -": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}. {release}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_keywords": ["confidence","release"],
		"_avoid_normal_discard": true,
		"_amounts": {
			"defence_amount": 10
		},
		"_is_upgrade": true,
	},
	"Interpretation": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6
		},
		"_upgrade_threshold": 5,
		"_upgrades": [
			"+ Interpretation +",
			"@ Interpretation @",
			"- Interpretation -",
		],
	},
	"@ Interpretation @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 5
		},
		"_is_upgrade": true,
	},
	"+ Interpretation +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 9
		},
		"_is_upgrade": true,
	},
	"- Interpretation -": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for {damage_amount}. {release}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_keywords": ["interpretation","release"],
		"_avoid_normal_discard": true,
		"_amounts": {
			"damage_amount": 12
		},
		"_is_upgrade": true,
	},
	"Out of Reach": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "Gain {effect_stacks} {untouchable}",
		"Cost": 3,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 1
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"@ Out of Reach @",
			"* Out of Reach *",
		],
	},
	"@ Out of Reach @": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "Gain {effect_stacks} {untouchable}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 1
		},
		"_is_upgrade": true,
	},
	"* Out of Reach *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "Gain {effect_stacks} {untouchable}",
		"Cost": 5,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 2
		},
		"_is_upgrade": true,
	},
	"Dive-in": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.risky.name],
		"Abilities": "Gain {effect_stacks} {shaken}\nYour next {damage} is doubled.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.PLAYER
		},
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_stacks": 2
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"Powerful Dive-in",
			"Enhanced Dive-in",
		],
	},
	"Enhanced Dive-in": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.risky.name],
		"Abilities": "Gain {effect_stacks} {shaken}\nYour next {damage} is doubled.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.PLAYER
		},
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_stacks": 1
		},
		"_is_upgrade": true,
	},
	"Powerful Dive-in": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.risky.name],
		"Abilities": "Gain {effect_stacks} {shaken}\nYour next {damage} is tripled.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.PLAYER
		},
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_stacks": 3
		},
		"_is_upgrade": true,
	},
	"Safety of Air": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "{relax} for {healing_amount}. {forget}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_amounts": {
			"healing_amount": 4
		},
		"_upgrade_threshold": 8,
		"_upgrades": [
			"+ Safety of Air +",
			"Sustained Safety of Air",
			"@ Safety of Air @",
		],
	},
	"+ Safety of Air +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "{relax} for {healing_amount}. {forget}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_amounts": {
			"healing_amount": 7
		},
		"_is_upgrade": true,
	},
	"@ Safety of Air @": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "{relax} for {healing_amount}. {forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
		"_amounts": {
			"healing_amount": 4
		},
		"_is_upgrade": true,
	},
	"Sustained Safety of Air": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "{relax} for {healing_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": [],
		"_amounts": {
			"healing_amount": 4
		},
		"_is_upgrade": true,
	},
	"Nothing to Fear": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.risky.name, Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain 1 {immersion} at the start of each turn.\n"\
			+ " Increase all {stress} taken from Torment intents by 2.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["stress"],
		"_upgrade_threshold": 5,
		"_upgrades": [
			"@ Nothing to Fear @",
			"Absolutely Nothing to Fear",
		],
	},
	"@ Nothing to Fear @": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.risky.name, Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain 1 {immersion} at the start of each turn.\n"\
			+ " Increase all {stress} taken from Torment intents by 2.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["stress"],
		"_is_upgrade": true,
	},
	"Absolutely Nothing to Fear": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.risky.name, Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain 1 {immersion} at the start of each turn.\n"\
			+ " Increase all {stress} taken from Torment intents by 1.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["stress"],
		"_is_upgrade": true,
	},
	"Confounding Movements": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {confusion} to target Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 9,
			"effect_stacks": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Confounding Movements +",
			"* Confounding Movements *",
		],
	},
	"+ Confounding Movements +": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {confusion} to target Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 14,
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	"* Confounding Movements *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {confusion} to target Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 10,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"Noisy Whip": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "{damage} for {damage_amount}.\nApply {confusion}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
			"effect_stacks": 1,
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"+ Noisy Whip +",
			"@ Noisy Whip @",
			"* Noisy Whip *",
		],
	},
	"@ Noisy Whip @": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "{damage} for {damage_amount}.\nApply {confusion}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 5,
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	"+ Noisy Whip +": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "{damage} for {damage_amount}.\nApply {confusion}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 9,
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	"* Noisy Whip *": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "{damage} for {damage_amount}.\nApply {effect_stacks} {confusion}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"Inner Justice": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain {immersion_amount} {immersion}",
		"Cost": 3,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_amounts": {
			"immersion_amount": 4,
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"@ Inner Justice @",
			"+ Inner Justice +",
			"~ Inner Justice ~",
		],
	},
	"@ Inner Justice @": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain {immersion_amount} {immersion}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_amounts": {
			"immersion_amount": 3,
		},
		"_is_upgrade": true,
	},
	"+ Inner Justice +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Gain {immersion_amount} {immersion}",
		"Cost": 4,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_amounts": {
			"immersion_amount": 7,
		},
		"_is_upgrade": true,
	},
	"~ Inner Justice ~": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.purpose.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Gain {immersion_amount} {immersion}. {forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Starting",
		"_amounts": {
			"immersion_amount": 2,
		},
		"_is_upgrade": true,
	},
	"Whirlwind": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}. Repeat {chain_amount} times",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 3,
			"chain_amount": 3,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Whirlwind +",
			"Wild Whirlwind",
		],
	},
	"+ Whirlwind +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}. Repeat {chain_amount} times",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 5,
			"chain_amount": 3,
		},
		"_is_upgrade": true,
	},
	"Wild Whirlwind": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}. Repeat {chain_amount} times",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 3,
			"chain_amount": 5,
		},
		"_is_upgrade": true,
	},
	"Overview": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Remove all {defence} from target Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["perplexity"],
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Overview @",
			"Piercing Overview",
		],
	},
	"@ Overview @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Remove all {defence} from target Torment.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["perplexity"],
		"_is_upgrade": true,
	},
	"Piercing Overview": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "Remove all {defence} from target Torment and apply {effect_stacks} Shaken",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["perplexity"],
		"_amounts": {
			"effect_stacks": 3,
		},
		"_is_upgrade": true,
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
	},
	"War Paint": { #TODO
		"Type": "Control",
		"Tags": [],
		"Abilities": "All {damage} is increased by 1 this turn.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
	},
	"Rubber Eggs": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "At the start of your turn, {damage} a random Torment with {confusion} for {effect_damage}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_damage": 6,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Rubber Eggs @",
			"Bouncy Rubber Eggs",
			"Hard Rubber Eggs",
		],
	},
	"@ Rubber Eggs @": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "At the start of your turn, {damage} a random Torment with {confusion} for {effect_damage}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_amounts": {
			"effect_damage": 6,
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_is_upgrade": true,
	},
	"Hard Rubber Eggs": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "At the start of your turn, {damage} a random Torment with {confusion} for {effect_damage}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_amounts": {
			"effect_damage": 9,
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_is_upgrade": true,
	},
	"Bouncy Rubber Eggs": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "At the start of your turn, {damage} all Torments with {confusion} for {effect_damage}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_amounts": {
			"effect_damage": 6,
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_is_upgrade": true,
	},
	"The Joke": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Target a Torment. If it doesn't have {confusion} Apply {effect_stacks} {confusion}"\
			+ " If it has {confusion}, {damage} for {damage_amount}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 15,
			"effect_stacks": 4,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"* The Joke *",
			"+ The Joke +",
			"= The Joke =",
		],
		
	},
	"* The Joke *": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Target a Torment. If it doesn't have {confusion} Apply {effect_stacks} {confusion}"\
			+ " If it has {confusion}, {damage} for {damage_amount}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 14,
			"effect_stacks": 7,
		},
		"_is_upgrade": true,
		"_reuse_script": "The Joke",
	},
	"+ The Joke +": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Target a Torment. If it doesn't have {confusion} Apply {effect_stacks} {confusion}"\
			+ " If it has {confusion}, {damage} for {damage_amount}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 22,
			"effect_stacks": 3,
		},
		"_is_upgrade": true,
		"_reuse_script": "The Joke",
	},
	"= The Joke =": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.disempower.name],
		"Abilities": "Target a Torment. If it doesn't have {confusion} Apply {effect_stacks} {confusion}"\
			+ " If it has {confusion}, {damage} for {damage_amount}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 18,
			"effect_stacks": 5,
		},
		"_is_upgrade": true,
		"_reuse_script": "The Joke",
	},
	"Nunclucks": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Increase your {damage} by {effect_damage} for each stack of {confusion} on the Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_damage": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Nunclucks @",
			"Massive Nunclucks",
		],
	},
	"@ Nunclucks @": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Increase your {damage} by {effect_damage} for each stack of {confusion} on the Torment.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_damage": 1,
		},
		"_is_upgrade": true,
	},
	"Massive Nunclucks": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Increase your {damage} by {effect_damage} for each stack of {confusion} on the Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
		"_amounts": {
			"effect_damage": 2,
		},
		"_is_upgrade": true,
	},
	"Gummiraptor": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
			+ "Repeat this if Torments are not going to be inflicting any {stress} this turn.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation", "stress"],
		"_amounts": {
			"damage_amount": 14,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Gummiraptor @",
			"+ Gummiraptor +",
			"Smart Gummiraptor",
		],
	},
	"@ Gummiraptor @": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
			+ "Repeat this if Torments are not going to be inflicting any {stress} this turn.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation", "stress"],
		"_amounts": {
			"damage_amount": 12,
		},
		"_is_upgrade": true,
	},
	"+ Gummiraptor +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
			+ "Repeat this if Torments are not going to be inflicting any {stress} this turn.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation", "stress"],
		"_amounts": {
			"damage_amount": 19,
		},
		"_is_upgrade": true,
	},
	"Smart Gummiraptor": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\n"\
			+ "Repeat this if Torments are going to be inflicting 5 or less {stress} this turn.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation", "stress"],
		"_amounts": {
			"damage_amount": 15,
		},
		"_is_upgrade": true,
	},
	"Cocky Retort": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Gain {defence_amount} {confidence}\n Draw {draw_amount} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 8,
			"draw_amount": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Cocky Retort +",
			"Rapid Cocky Retort",
		],
	},
	"+ Cocky Retort +": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Gain {defence_amount} {confidence}\n Draw {draw_amount} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 12,
			"draw_amount": 1,
		},
		"_is_upgrade": true,
	},
	"! Cocky Retort !": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Gain {defence_amount} {confidence}\n Draw {draw_amount} cards.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 8,
			"draw_amount": 2,
		},
		"_is_upgrade": true,
	},
	"Rapid Encirclement": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "Apply {effect_stacks} {shaken} to all Torments.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"* Rapid Encirclement *",
			"~ Rapid Encirclement ~",
		],
	},
	"* Rapid Encirclement *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "Apply {effect_stacks} {shaken} to all Torments.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 4,
		},
		"_is_upgrade": true,
	},
	"~ Rapid Encirclement ~": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "Apply {effect_stacks} {shaken} to all Torments. {forget}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 7,
		},
		"_is_upgrade": true,
	},
	"Barrel Through": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\nIf the Torment has {shaken}, {damage} all other Torments for {damage_amount2}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 8,
			"damage_amount2": 12,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Barrel Through +",
			"= Barrel Through =",
		],
	},
	"+ Barrel Through +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\nIf the Torment has {shaken}, {damage} all other Torments for {damage_amount2}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 12,
			"damage_amount2": 12,
		},
		"_is_upgrade": true,
	},
	"= Barrel Through =": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.chain.name],
		"Abilities": "{damage} for {damage_amount}.\nIf the Torment has {shaken}, {damage} all other Torments for {damage_amount2}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.vulnerable.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 15,
			"damage_amount2": 8,
		},
		"_is_upgrade": true,
	},
	"Intimidate": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Apply {effect_stacks} {doubt} to all Torments",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 2,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Intimidate @",
			"* Intimidate *",
		],
	},
	"@ Intimidate @": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Apply {effect_stacks} {doubt} to all Torments",
		"Cost": 0,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"* Intimidate *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Apply {effect_stacks} {doubt} to all Torments",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_amounts": {
			"effect_stacks": 3,
		},
		"_is_upgrade": true,
	},
	"Cheeky Approach": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {doubt} to target Torment.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 11,
			"effect_stacks": 3,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"= Cheeky Approach =",
			"+ Cheeky Approach +",
			"* Cheeky Approach *",
		],
	},
	"= Cheeky Approach =": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {doubt} to target Torment.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 14,
			"effect_stacks": 4,
		},
		"_is_upgrade": true,
	},
	"+ Cheeky Approach +": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {doubt} to target Torment.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 18,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"* Cheeky Approach *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {doubt} to target Torment.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 8,
			"effect_stacks": 6,
		},
		"_is_upgrade": true,
	},
	"Laugh at Danger": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "After a Torment performs {stress}, it gains {effect_stacks} {doubt}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["stress"],
		"_amounts": {
			"effect_stacks": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Laugh at Danger @",
			"Roaring Laugh at Danger",
		],
	},
	"@ Laugh at Danger @": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "After a Torment performs {stress}, it gains {effect_stacks} {doubt}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["stress"],
		"_amounts": {
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	"Roaring Laugh at Danger": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "After a Torment performs {stress}, it gains {effect_stacks} {doubt}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Rare",
		"_keywords": ["stress"],
		"_amounts": {
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"Towering Presence": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} equal to your current {confidence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Towering Presence @",
			"Overwhelming Presence",
		],
	},
	"@ Towering Presence @": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} equal to your current {confidence}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_is_upgrade": true,
	},
	"Overwhelming Presence": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} equal to your current {confidence} + {damage_amount}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_amounts": {
			"damage_amount": 6,
		},
		"_is_upgrade": true,
	},
	"Unassailable": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you apply {doubt}, gain {effect_defence} {confidence}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_defence": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"@ Unassailable @",
			"Completely Unassailable",
		],
	},
	"@ Unassailable @": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you apply {doubt}, gain {effect_defence} {confidence}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_defence": 2,
		},
		"_is_upgrade": true,
	},
	"Completely Unassailable": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you apply {doubt}, gain {effect_defence} {confidence}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["confidence"],
		"_amounts": {
			"effect_defence": 3,
		},
		"_is_upgrade": true,
	},
	"Audacity": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {courage}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 8,
			"effect_stacks": 1,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Audacity +",
			"* Audacity *",
		],
	},
	"+ Audacity +": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {courage}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 12,
			"effect_stacks": 1,
		},
		"_is_upgrade": true,
	},
	"* Audacity *": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain {defence_amount} {confidence}\nApply {effect_stacks} {courage}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["confidence"],
		"_amounts": {
			"defence_amount": 17,
			"effect_stacks": 2,
		},
		"_is_upgrade": true,
	},
	"Boast": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Double your {confidence}\nRemove all {courage}\n{forget}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_keywords": ["confidence", "forget"],
		"_upgrade_threshold": 8,
		"_upgrades": [
			"Massive Boast",
			"@ Boast @",
			"Sustained Boast",
		],
	},
	"@ Boast @": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Double your {confidence}\nRemove all {courage}\n{forget}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_keywords": ["confidence", "forget"],
		"_is_upgrade": true,
	},
	"Massive Boast": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Gain 4 {confidence}\nDouble your {confidence}\nRemove all {courage}\n{forget}.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_keywords": ["confidence", "forget"],
		"_amounts": {
			"defence_amount": 4,
		},
		"_is_upgrade": true,
	},
	"Sustained Boast": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "Double your {confidence}\nRemove all {courage}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Rare",
		"_keywords": ["confidence"],
		"_is_upgrade": true,
	},
	"Solid Understanding": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}\n{damage} for {damage_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_amounts": {
			"defence_amount": 5,
			"damage_amount": 5,
		},
		"_upgrade_threshold": 7,
		"_upgrades": [
			"+ Solid Understanding +",
			"= Solid Understanding =",
			"% Solid Understanding %",
		],
	},
	"+ Solid Understanding +": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}\n{damage} for {damage_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_amounts": {
			"defence_amount": 5,
			"damage_amount": 9,
		},
		"_is_upgrade": true,
	},
	"% Solid Understanding %": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}\n{damage} for {damage_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_amounts": {
			"defence_amount": 9,
			"damage_amount": 5,
		},
		"_is_upgrade": true,
	},
	"= Solid Understanding =": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Gain {defence_amount} {confidence}\n{damage} for {damage_amount}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["confidence", "interpretation"],
		"_amounts": {
			"defence_amount": 7,
			"damage_amount": 7,
		},
		"_is_upgrade": true,
	},
	"No Second Thoughts": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.fortify.name],
		"Abilities": "Gain 2 {courage}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
	},
	"High Morale": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for 6.\nDraw a {courage} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.fortify.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"]
	},
	"Confident Slap": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Apply 5 {doubt} to target Torment.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Common",
	},
	"Swoop": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for 8. If you have {untouchable}, {damage} for 12 instead.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
	},
	"Drag and Drop": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.impervious.name],
		"Abilities": "{damage} for 10. If Torment is {overcome}, gain 1 {untouchable}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["interpretation", "overcome"]
	},
	"Running Start": {
		"Type": "Control",
		"Tags": [],
		"Abilities": "{damage} for 5.\nDraw a {untouchable} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"]
	},
	"Master of Skies": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "Whenever you gain {untouchable}, Gain 1 {immersion}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Rare",
	},
	"Zen of Flight": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.relax.name],
		"Abilities": "At the end of each turn, {relax} 1.\nIf you have {untouchable}, {relax} 1 extra.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.impervious.name: Terms.PLAYER
		},
		"_rarity": "Rare",
	},
	"Loop de loop": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain 7 {confidence}\nGain 1 {fascination}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_rarity": "Common",
		"_keywords": ["confidence"]
	},
	"Headless": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain 4 {fascination}",
		"Cost": 2,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.buffer.name: Terms.PLAYER
		},
		"_rarity": "Common",
	},
	"Utterly Ridiculous": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "Can only be played if there's a total of 6 or more {confusion} among Torments\n"\
				+ "{damage} all Torments for 20",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
	},
	"Ventriloquism": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for 8.\nDraw a {confusion} card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Common",
		"_keywords": ["interpretation"],
	},
	"unnamed_card_1": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.spark.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "{shuffle} your discard pile into your deck.\nPlay a Random card from your deck. {forget}.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["forget"],
	},
	"unnamed_card_2": {
		"Type": "Control",
		"Tags": [Terms.ACTIVE_EFFECTS.poison.name],
		"Abilities": "Each Torment is applied {doubt} equals to its {confusion} x2",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY,
			Terms.ACTIVE_EFFECTS.poison.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
	},
	"unnamed_card_3": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} all Torments for 8",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
		"_keywords": ["interpretation"],
	},
	"Absurdity Unleashed": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you apply {confusion} to a Torment, {damage} it for 4",
		"Cost": 1,
		"_illustration": "Nobody",
		"_effects_info": {
			Terms.ACTIVE_EFFECTS.disempower.name: Terms.ENEMY
		},
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"]
	},
	"Dread": {
		"Type": "Perturbation",
		"Tags": [],
		"Abilities": "{release}",
		"Cost": 1,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Temporary",
		"_keywords": ["release"]
	},
	"unnamed_card_4": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.fading.name, Terms.GENERIC_TAGS.slumber.name],
		"Abilities": "Gain 11 {confidence}. {forget}",
		"Cost": 0,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_keywords": ["confidence", "forget"]
	},
	"Change of Mind": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "{damage} for {damage_amount}. {shuffle} this card into your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 8,
		},
		"_upgrade_threshold": 6,
		"_upgrades": [
			"+ Change of Mind +",
			"@ Change of Mind @",
		],
	},
	"+ Change of Mind +": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "{damage} for {damage_amount}. {shuffle} this card into your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 11,
		},
		"_is_upgrade": true,
	},
	"@ Change of Mind @": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "{damage} for {damage_amount}. {shuffle} this card into your deck.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_avoid_normal_discard": true,
		"_rarity": "Common",
		"_keywords": ["interpretation"],
		"_amounts": {
			"damage_amount": 6,
		},
		"_is_upgrade": true,
	},
	"Brilliance": {
		"Type": "Concentration",
		"Tags": [],
		"Abilities": "Whenever you {shuffle} your deck, gain 4 {confidence}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
	},
	"Rapid Theorizing": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.swift.name],
		"Abilities": "Gain 8 {confidence}.\n"\
				+ "If you've {shuffled} your deck this turn, gain 3 {confidence} and draw a card.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["confidence"],
	},
	"Wild Inspiration": {
		"Type": "Control",
		"Tags": [Terms.GENERIC_TAGS.slumber.name, Terms.GENERIC_TAGS.purpose.name],
		"Abilities": "{forget} the top card of the deck: Gain 1 {immersion}. Draw 2 cards.",
		"Cost": 0,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["forget"],
	},
	"Recall": {
		"Type": "Concentration",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "At the end of your turn, {shuffle} the top card from the discard pile into the deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
	},
	"unnamed_card_5": {
		"Type": "Action",
		"Tags": [Terms.GENERIC_TAGS.spark.name],
		"Abilities": "{damage} for 10. You may {discard} two cards from your hand to {shuffle} this card into your deck.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Common",
	},
	"It's alive!": {
		"Type": "Action",
		"Tags": [],
		"Abilities": "{damage} for 12.\n{damage} for 2 for each time your deck was shuffled.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
		"_keywords": ["interpretation"],
	},
	"Detect Weaknesses": {
		"Type": "Action",
		"Tags": [Terms.ACTIVE_EFFECTS.vulnerable.name],
		"Abilities": "{damage} for 9. If you've shuffled your deck this turn, apply 2 {vulnerable}.",
		"Cost": 1,
		"_illustration": "Nobody",
		"_rarity": "Uncommon",
		"_keywords": ["interpretation"],
	},
	"Eureka!": {
		"Type": "Concentration",
		"Tags": [Terms.ACTIVE_EFFECTS.buffer.name],
		"Abilities": "Gain 1 {buffer} every other time you shuffle your deck.",
		"Cost": 2,
		"_illustration": "Nobody",
		"_rarity": "Rare",
	},
}
