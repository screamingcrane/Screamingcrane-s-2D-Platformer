extends Node2D

const speed = 50

var direction = 1

@onready var raycast_right: RayCast2D = $"Raycast Right"
@onready var raycast_left: RayCast2D = $"Raycast Left"
@onready var ani_2d: AnimatedSprite2D = $"Ani 2d"



func _process(delta):
	
	if raycast_right. is_colliding():
		direction = -1
		ani_2d.flip_h = true
	if raycast_left. is_colliding():
		direction = 1
		ani_2d.flip_h = false
	position.x += direction * speed * delta
