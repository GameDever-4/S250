extends Area2D

# An optional exported variable to define the item's value in the editor
@export var item_value: int = 1

# Signal to notify other nodes that a collection happened
signal collected(value)

func _on_body_entered(body):
	# Check if the body entering the area is the player (you might use a group for this)
	# For a simple check, if you know the player has a specific name or a script...
	if body.name == "Player":
		# Emit the signal to update a global counter
		emit_signal("collected", item_value)
		# Play a sound effecct if you like (ensure an AudioStreamPlayer node is a child)
		# $AudioStreamPlayer.play()
		
		# Remove the collectible from the scene
		queue_free() # Use queue() to delete the node safely
