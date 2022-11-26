extends Area2D

export var scene = ""

var isMemoryActive = false

func _on_Memory_body_entered(_body):
  isMemoryActive = true

func _on_Memory_body_exited(_body):
  isMemoryActive = false

func _process(_delta):
  if isMemoryActive and Input.is_action_just_pressed("ui_accept"):
    print(scene)
