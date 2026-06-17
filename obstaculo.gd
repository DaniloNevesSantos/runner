extends Area2D

@export var velocidade: int
func _ready() -> void:
	velocidade = 400
	
func _process(delta: float) -> void:
	$".".position.x -= velocidade*delta
	if $".".position.x < -1152:
		$".".position.x = randi_range(1155, 1170)
		$".".position.x -= velocidade*delta*2
		
func _on_body_enterend(body: Node2D) -> void:
	body.pontos += 1
	queue_free()
