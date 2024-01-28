extends Module

func getFlags():
	return {
		"grindingFlDiscoveredHatch": flag(FlagType.Bool)
	}

func _init():
	id = "grindingFloor"
	author = "CanInBad"

	events = [
		"res://Modules/Z_IgrindingFloor/Events/EntranceEnter.gd",
		"res://Modules/Z_IgrindingFloor/Events/EntranceLeave.gd",
	]
	scenes = [
		"res://Modules/Z_IgrindingFloor/Scenes/discoverHatch.gd"
	]
	characters = []
	if checkMods():
		characters.append("res://Modules/Z_IgrindingFloor/CIBcharModded.gd")
	else:
		characters.append("res://Modules/Z_IgrindingFloor/CIBcharNonModded.gd")


func checkMods(): # will return true if all mods present
	var beutifiedList = {
		"Dragons+": "Dragon+", 
		"DEV BITS": "ScalieExpandsion",
		"Hypertus": "Hypertus",
		"SynthSpecies": "Synth Species",
		"Knotted Horse Cock": "KnottedEquinePenis",
	}
	var notPresent:Array = []
	for i in beutifiedList.keys():
		if !(i in GlobalRegistry.getModules()):
			notPresent.append(i)
	
	if len(notPresent)>0:
		Log.printerr("### "+id+": Atleast a mod is missing for custom character!")
		for i in notPresent:
			Log.print("### "+id+": Missing "+ beutifiedList[i])
		return false
	return true
