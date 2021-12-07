extends Area2D
var speed = 2
var velocity = Vector2.ZERO

func _physics_process(_delta): 
	position += velocity 
	velocity.y -= speed 
	
	


func _on_Bullet_body_entered(body):
	body.die()
	queue_free()
