extends KinematicBody2D

var Enemy_Bullet = load("res://Enemy/Enemy_Bullet.tscn")
onready var Bullets = get_node("/root/Game/Bullets")
var speed = 2

func _ready():
	randomize()

func _physics_process(_delta):
	pass

func die(s):
	Global.score += s
	queue_free()


func _on_Shoot_timeout():
	if randf() < .5:
		var enemy_bullet = Enemy_Bullet.instance()
		enemy_bullet.position = position
		Bullets.add_child(enemy_bullet)
	


