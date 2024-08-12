extends Node
signal mouse_entered(card: Card)
signal mouse_exited(card: Card)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_card_mouse_entered(card: Card):
	mouse_entered.emit(card)
	
	
func _on_card_mouse_exited(card: Card):
	mouse_exited.emit(card)
	
func highlight():
	$Card.highlight()
	
func unhighlight():
	$Card.unhighlight()