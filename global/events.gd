extends Node

#Card-Related Events
signal card_drag_started(card: CardUI)
signal card_drag_ended(card: CardUI)
signal card_aim_started(card: CardUI)
signal card_aim_ended(card: CardUI)
signal card_played(card: Card)
