extends KinematicBody2D

var sprite = null
var velocidade = 400 
var gravidade  = 30
var forca_pulo = 600
var mov = Vector2.ZERO
	
func _ready():
	sprite = $AnimatedSprite 
	

func movimentarEixoX():
	if(Input.is_action_pressed("ui_left")):
		mov.x = -velocidade
		sprite.flip_h = true
	elif(Input.is_action_pressed("ui_right")):
		mov.x = velocidade
		sprite.flip_h = false
			
func movimentarEixoY():
	if (Input.is_action_just_pressed("ui_up") and is_on_floor()):
		mov.y = -forca_pulo

func _process(delta):
	mov.x = 0
	mov.y += gravidade
	movimentarEixoX()
	movimentarEixoY()
	mov = move_and_slide(mov, Vector2(0,-1))
	

		
		
		

	

	

	
	
	 
