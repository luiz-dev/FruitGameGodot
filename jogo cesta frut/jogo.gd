extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var frutaum = preload("res://fruta.tscn")

	var frutavecini = Vector2(0,0)
	var frutainst = frutaum.instance()
	var numb = rand_range(9,110)
	var newPos = Vector2(frutavecini.x + numb, -20)
	
	print(str(newPos.x))
	print(str(newPos.y))
	frutainst.position = newPos
	add_child(frutainst)
	print("foi timer")
	pass # Replace with function body.
