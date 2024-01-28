extends EventBase

func _init():
    id = "cheatingFloorEntranceEnter"

func registerTriggers(es):
    es.addTrigger(self, Trigger.EnteringRoom, "yard_deadend1")

func run(_triggerID, _args):
    if(getModuleFlag("grindingFloor","grindingFlDiscoveredHatch")):
        saynn("There is a open hatch here with the label writting on underside of it: [b]Spawn Room[/b]")
        addButton("The Hatch", "Go down the hatch", "enterHatch")
    else:
        saynn("Something caught your eye in the corner...")
        addButton("Closer Look","Go take a closer look at the thing","closerLook")


func getPriority():
    return 0

func onButton(_method, _args):
    if _method == "closerLook":
        runScene("discoverHatch")
    if(_method == "enterHatch"):
        GM.pc.setLocation("grinding_entrance")
        GM.main.reRun()
