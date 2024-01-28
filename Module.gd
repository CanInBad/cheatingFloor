extends Module

func getFlags():
	return {
		"grindingFlDiscoveredHatch": flag(FlagType.Bool)
	}

func _init():
	id = "grindingFloor"
	author = "CanInBad"

	events = [
		"res://Modules/Y_grindingFloor/Events/EntranceEnter.gd",
		"res://Modules/Y_grindingFloor/Events/EntranceLeave.gd",
	]
	scenes = [
		"res://Modules/Y_grindingFloor/Scenes/discoverHatch.gd"
	]
	