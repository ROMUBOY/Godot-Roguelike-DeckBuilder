extends Resource
class_name CardPile

signal card_pile_size_changed(card_amount)

@export var cards: Array[Card] = []

func empty() -> bool:
	return cards.is_empty()

func draw_card() -> Card:
	var card = cards.pop_front()
	card_pile_size_changed.emit(cards.size())
	return card

func add_card(card: Card):
	cards.append(card)
	card_pile_size_changed.emit(cards.size())

func shuffle() -> void:
	cards.shuffle()

func clear() -> void:
	cards.clear()
	card_pile_size_changed.emit(cards.size())

func _to_string() -> String:
	var _card_string: PackedStringArray = []
	
	for i in range(cards.size()):
		_card_string.append("%s: %s" % [i+1, cards[i].id])
	
	return "\n".join(_card_string)
