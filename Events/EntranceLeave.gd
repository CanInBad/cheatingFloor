extends EventBase

func _init():
	id = "cheatingFloorEntranceLeave"

func registerTriggers(es):
	es.addTrigger(self, Trigger.EnteringRoom, "custom_fight_entrance")

func run(_triggerID, _args):
	# if(!getFlag("FightClubModule.BulldogFirstTimeHappened")):
	# 	addButtonUnlessLate("Bulldog", "Approach the guy", "bulldog")
	# elif(!getFlag("FightClubModule.BulldogBypassed")):
	# 	addButtonUnlessLate("Bulldog", "Approach the guy", "bulldogtalk")
	# else:
    addButton("leave", "Go down to the fight club", "leave")


func getPriority():
	return 0

func onButton(_method, _args):
	if(_method == "bulldog"):
		runScene("BulldogFirstTimeScene")
		setFlag("FightClubModule.BulldogFirstTimeHappened", true)
	if(_method == "bulldogtalk"):
		runScene("BulldogTalkScene")
	if(_method == "leave"):
		GM.pc.setLocation("yard_deadend1")
		GM.main.reRun()
