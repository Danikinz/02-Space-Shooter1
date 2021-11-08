extends Node2D

var rotation_speed = 3.0
var Weapon = null
var Weapons = null

func _ready():
	Weapon = preload("res://Weapon.tscn")
	pass

func _physics_process(_delta):
	if Input.is_action_pressed("left"):
		rotation_degrees -= rotation_speed
	if Input.is_action_pressed("right"):
		rotation_degrees += rotation_speed
	if Input.is_action_just_pressed("shoot") and Weapon != null:
		var weapon = Weapon.instance()
		weapon.position = position + Vector2(0,-140).rotated(rotation)
		weapon.rotation = rotation
		if Weapons == null:
			Weapons = get_node_or_null("/root/Game/Weapons")
		if Weapons != null:
			Weapons.add_child(weapon)
