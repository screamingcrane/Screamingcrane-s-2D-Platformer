extends Node2D

const speed = 90

var direction = 1

@onready var raycast_right: RayCast2D = $"Raycast Right"
@onready var raycast_left: RayCast2D = $"Raycast Left"
@onready var animated_sprite_2dy: AnimatedSprite2D = $AnimatedSprite2DY


func _process(delta):
	
	if raycast_right. is_colliding():
		direction = -1
		animated_sprite_2dy.flip_h = true
	if raycast_left. is_colliding():
		direction = 1
		animated_sprite_2dy.flip_h = false
	position.x += direction * speed * delta
