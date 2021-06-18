extends Hand


func _ready() -> void:
	pass

func refill_hand() -> void:
	for card in get_all_cards():
		card.move_to(cfc.NMAP.discard)
	for iter in range(5):
		var retcode = draw_card(cfc.NMAP.deck)
		if retcode is GDScriptFunctionState:
			retcode = yield(retcode, "completed")
		else:
			yield(get_tree().create_timer(0.05), "timeout")

# Takes the top card from the specified [CardContainer]
# and adds it to this node
# Returns a card object drawn
func draw_card(pile : Pile = cfc.NMAP.deck) -> Card:
	var card: Card = pile.get_top_card()
	# A basic function to pull a card from out deck into our hand.
	if not card:
		cfc.NMAP.discard.reshuffle_in_deck()
		yield(pile, "shuffle_completed")
		card = pile.get_top_card()
	if card:
		card.move_to(self)
	return card
