extends Node2D

var velocity = Vector2.ZERO
var speed = .066
var Bullet1 = load("res://Bullet.tscn")
onready var Bullets = get_node("/root/Game/Bullets")


func _physics_process(_delta):
	velocity += get_input()*speed
	position += velocity 
	if Input.is_action_pressed("shoot"):
		var bullet1 = Bullet1.instance()
		bullet1.position = position
		Bullets.add_child(bullet1)
	
	
func get_input():
	var input_vector = Vector2.ZERO 
	if Input.is_action_pressed("left"):
		input_vector += Vector2(-1, 0)
	if Input.is_action_pressed("right"):
		input_vector += Vector2(1, 0)
	return input_vector 
