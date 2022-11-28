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
  if          isMemoryActive                                        \
      and not Global.isTimeLineActive                               \
      and     Input.is_action_just_pressed("ui_accept"):

    var new_dialog = Dialogic.start(dialogicTimeline)
    new_dialog.connect("timeline_end", Global, "_on_timeline_end")
    add_child(new_dialog)
    Global.timeline_start(dialogicTimeline)
