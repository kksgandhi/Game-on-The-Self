extends Area2D

export var dialogicTimeline = ""

var isMemoryActive = false

func _on_Memory_body_entered(_body):
  isMemoryActive = true
  $Sprite.scale = Vector2(0.5, 0.5)

func _on_Memory_body_exited(_body):
  isMemoryActive = false
  $Sprite.scale = Vector2(0.3, 0.3)

func _process(_delta):
  if isMemoryActive and Input.is_action_just_pressed("ui_accept"):
    print(dialogicTimeline)
    var new_dialog = Dialogic.start(dialogicTimeline)
    add_child(new_dialog)
