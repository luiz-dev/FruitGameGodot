extends KinematicBody2D

var vel = Vector2.ZERO
var left = false
var right = false

signal ativa_pontos(valor)

var pontos = 0

func soma_pontos(valor):
	pontos += 1
	emit_signal("ativa_pontos", pontos)
	pass

func _physics_process(delta):
	vel.y += 2
	if(Input.is_action_pressed("ui_left") or left):
		vel.x = -70
	elif(Input.is_action_pressed("ui_right") or right):
		vel.x = 70
	else:
		vel.x = 0
	move_and_slide(vel)

# Called when the node enters the scene tree for the first time.
func _ready():
	print("crio")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Button_button_down():
	left = true
	pass # Replace with function body.


func _on_Button_button_up():
	left = false
	pass # Replace with function body.


func _on_Button2_button_down():
	right = true
	pass # Replace with function body.


func _on_Button2_button_up():
	right = false
	pass
