extends Node2D

@export var cena_item = preload("res://cena/item.tscn")

var time = 0.0
func _process(delta: float) -> void:
	time += delta
	if time == 1.5:
		var item = cena_item.instantiate()
		item.position.x = Vector2(500, 400)
		item.position.y = randi_range(330, 530)
		add_child(item)
		
