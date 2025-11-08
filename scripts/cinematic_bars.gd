extends CanvasLayer

@onready var animation_player = $AnimationPlayer

# State
var is_active = false

func _ready() -> void:
	if animation_player:
		animation_player.play("RESET")
	
	
func show_bars():
	if is_active:
		return
	
	is_active = true
	
	animation_player.play("show_bars")


func hide_bars():
	if not is_active:
		return
	
	is_active = false
	
	animation_player.play("hide_bars")
