extends Node2D

@export var cena_obstaculo = preload("res://cena/obstaculo.tscn")

var time = 0.0
func _process(delta: float) -> void:
	time += 1
	if time == 2:
		var obstaculo = cena_obstaculo.instantiate()
		add_child(obstaculo)
		
		
		
	
	
