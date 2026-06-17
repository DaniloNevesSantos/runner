extends Node2D

@export var cena_item = preload("res://cena/item.tscn")

var time = 0.0
func _process(delta: float) -> void:
	time += 1
	if time == 2:
		var item = cena_item.instantiate()
		randi_range(330, 530)
		add_child(item)
		
