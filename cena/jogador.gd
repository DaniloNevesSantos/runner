extends CharacterBody2D
var vidas = 5
var pontos = 0
var velocidade_pulo = -600
func _physics_process(delta: float) -> void:
	pontos += delta * 1
	velocity += get_gravity()*delta
	if is_on_floor():
		$Imagem.play("default")
		if Input.is_action_pressed("ui_select"):
			velocity.y = velocidade_pulo
	else:
		$Imagem.play("pular")
	move_and_slide()
	

func _on_area_2d_area_entered(area):
	if area.is_in_group("danos"):
		vidas -= 1
	if vidas <= 0:
		get_tree().paused = true
		
