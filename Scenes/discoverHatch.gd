extends SceneBase

func _init():
    sceneID = "discoverHatch"

func _run():
    match state:
        "kickingHatch":
            setModuleFlag("grindingFloor","grindingFlDiscoveredHatch",true)
            saynn("Huh, there is a metal ringing sound coming from the weird bump!")
            saynn("You start going around the weird bump...")
            saynn("You saw a green valve, and you start rotating it...")
            saynn("Once the valve has turned all the way and you feel like the weird bump is moving up on its own")
            addMessage("You have discovered a hatch!")
            addButton("Huh", "I guess that's something", "endScene")
            
        _:
            saynn("You take a closer look at the bump on the ground.")
            saynn("...")
            saynn("You are quite interested in the bump on the ground.")
            say("Do you want to kick it?")
            addButton("Kick it", "I am curious", "kickHatch")
            addButton("No", "Aint riskin' that", "endScene")


func _react(_action: String, _args):
    match _action:
        "kickHatch":
            setState("kickingHatch")
            return
        "endScene":
            endScene()
            return
        

    setState(_action)
