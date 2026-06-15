extends Node2D

@export var cena_item = preload("res://cena/item.tscn")

var time = 0.0
func _process(delta: float) -> void:
	time += 1
	if time == 1.5:
		var Item = cena_item.instantiate()
		Item.position.y = randi_range(330, 530)
		add_child(Item)
		
