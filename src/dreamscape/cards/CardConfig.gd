# This class defines how the properties of the [Card] definition are to be
# used during `setup()`
#
# All the properties defined on the card json will attempt to find a matching
# label node inside the cards _card_labels dictionary.
# If one was not found, an error will be printed.
#
# The exception is properties starting with _underscore. This are considered
# Meta properties and the game will not attempt to display them on the card
# front.
class_name CardConfig
extends Reference

# Properties which are placed as they are in appropriate labels
const PROPERTIES_STRINGS := ["Type", "Abilities"]
# Properties which expected to be provided as integers.
# Note that you can still use strings as their values (e.g. 'X'), but those will be skipped
# During numerical comparisons, so you will have to handle those situations
# in your own code.
# Also see the REPLACEMENTS const.
const PROPERTIES_NUMBERS := ["Cost"]
# The name of these properties will be prepended before their value to their label.
const NUMBER_WITH_LABEL := []
# Properties provided in a list which are converted into a string for the
# label text, using the array_join() method
const PROPERTIES_ARRAYS := ["Tags"]
# This property matches the name of the scene file (without the .tcsn file)
# which is used as a template For this card.
const SCENE_PROPERTY = "Type"
# These are number carrying properties, which we want to hide their label
# when they're 0, to allow more space for other labels.
const NUMBERS_HIDDEN_ON_0 := []
# If any strings in this array are found in the value of a PROPERTIES_NUMBERS property
# Then during comparisons, they are treated as if they were 0
const VALUES_TREATED_AS_ZERO := ['X', 'null']
# The cards where their [SCENE_PROPERTY](#SCENE_PROPERTY) value is in this list
# will not be shown in the deckbuilder.
#
# This is useful to prevent a whole class of cards from being shown in the
# deckbuilder, without adding `_hide_in_deckbuilder` to each of them
const TYPES_TO_HIDE_IN_CARDVIEWER := ["Token"]
# If this property exists in a card and is set to true, the card will not be
# displayed in the cardviwer
const BOOL_PROPERTY_TO_HIDE_IN_CARDVIEWER := "_is_upgrade"
const EXPLANATIONS = {
	"interpretation": "Interpretation ([img=24x24]res://fonts/rich_text_icons/magnifying-glass.png[/img]): "\
			+ "Increases interpretation on Torments by the specified amount.\n"\
			+ "When this exceeds the Torment's max, it is overcome and removed from the encounter.",
	"stress": "Stress ([img=24x24]res://fonts/rich_text_icons/terror.png[/img]): "\
			+ "Increases [img=24x24]res://fonts/rich_text_icons/heart-beats.png[/img] on the Dreamer by the specified amount.\n"\
			+ "When this exceeds the Dreamer's max, they wake up from their dream.",
	"confidence": "Confidence ([img=24x24]res://fonts/rich_text_icons/shield.png[/img]): "\
			+ "[img=24x24]res://fonts/rich_text_icons/terror.png[/img] from Torment intents reduces confidence "\
			+ "before increasing the dreamer's [img=24x24]res://fonts/rich_text_icons/heart-beats.png[/img].\n",
	"anxiety": "Anxiety ([img=24x24]res://fonts/rich_text_icons/heart-beats.png[/img]): "\
			+ "Anxiety increases during the dream, typically through Torment [img=24x24]res://fonts/rich_text_icons/terror.png[/img]. "\
			+ "When this reaches the Dreamer's max, they wake up and the game is over.\n",
	"perplexity": "Perplexity ([img=24x24]res://fonts/rich_text_icons/shield.png[/img]): "\
			+ "[img=24x24]res://fonts/rich_text_icons/magnifying-glass.png[/img] done by the Dreamer reduces perplexity "\
			+ "before affecting the Torments.",
	"immersion": "Immersion ([img=24x24]res://fonts/rich_text_icons/concentration-orb.png[/img]): "\
			+ "Required to play most cards.",
	"overcome": "Overcoming: Once the dreamer has interpreted a Torment enough "\
			+ "it is removed from the encounter.",
	"forget": "[color=teal]Forget[/color]: This card is removed from this encounter and will not be reshuffled into the deck.",
	"release": "[color=teal]Release[/color]: This card is removed permanently from the Dreamer's deck.",
	"pierce": "[color=teal]Pierce[/color]: This effect bypasses [img=24x24]res://fonts/rich_text_icons/shield.png[/img]",
	"perturbation": "[color=white]Perturbation[/color]: Cards that tend to clutter your deck, and may have extra negative effects.",
	"delayed": "[color=yellow]Delayed[/color]: This effect will become active at the start of your next turn only.",

	'Sneaky-Beaky': "Note: This effect will not trigger from combat effects such as "\
			+ "[img=24x24]res://fonts/rich_text_icons/coma.png[/img] or [img=24x24]res://fonts/rich_text_icons/wrapped-heart.png[/img].",
	"scar": "Scar ([img=24x24]res://assets/card_front/scar-wound.png[/img]): "\
			+ "The affected card will be permanently degraded in a random manner",
	"enhance": "Enhance ([img=24x24]res://assets/card_front/sun.png[/img]): "\
			+ "The affected card will be permanently improved in a random manner",
}
# Allows the Card object and Card Viewer to replace specific entries during display.
# For example, you can mark that a cost of 'U' is displayed as an empty string ('').
# This const is a series of nested constants.
# Each top key is a property name.
# Each second-level key is value to replace.
# The value is the replacement.
const REPLACEMENTS = {
#	"Cost": {
#		'U': '',
#	}
}

# Creates the format dictionary to convert strings pointing to amounts
# text in the card abilities, into rich text numbers.
static func get_amounts_format(properties_dict: Dictionary, printed_properties_dict := {}) -> Dictionary:
	var amounts_format = properties_dict.get("_amounts", {}).duplicate(true)
	var printed_amounts_format = printed_properties_dict.get("_amounts", {}).duplicate(true)
	for amount in amounts_format:
		var amount_color = "yellow"
		if printed_amounts_format.has(amount):
			if amounts_format[amount] > printed_amounts_format[amount]:
				amount_color = "green"
			elif amounts_format[amount] < printed_amounts_format[amount]:
				amount_color = "red"
		var fmt := {
			"color": amount_color,
			"amount": amounts_format[amount],
		}
		amounts_format[amount] = "[color={color}]{amount}[/color]".format(fmt)
	return(amounts_format)
