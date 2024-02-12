extends Node2D

@onready var dice = $sprite

# Called when the node enters the scene tree for the first time.
func _ready():
	dice.play("Rolling")
	await get_tree().create_timer(4).timeout
	var num = randi_range(1, 6)
	
	if num == 1:
		dice.play("1")
	elif num == 2:
		dice.play("2")
	elif num == 3:
		dice.play("3")
	elif num == 4:
		dice.play("4")
	elif num == 5:
		dice.play("5")
	elif num == 6:
		dice.play("6")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
