extends Area2D

@onready var pickup_sound: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	
	if body.name == "Player":
		pickup_sound.play()
		hide() # hide coin immediately
		
		
		await pickup_sound.finished
		queue_free()
