extends Node

var isTimeLineActive = false

func timeline_start(_timeline_name):
  isTimeLineActive = true

func _on_timeline_end(timeline_name):
  print(timeline_name + "ended (global script)")
  isTimeLineActive = false
