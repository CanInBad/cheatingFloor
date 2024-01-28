extends EventBase

func _init():
	id = "cheatingFloorEntranceEnter"

func registerTriggers(es):
	es.addTrigger(self, Trigger.EnteringRoom, "yard_deadend1")

func run(_triggerID, _args):
	# if(!getFlag("FightClubModule.BulldogFirstTimeHappened")):
	# 	addButtonUnlessLate("Bulldog", "Approach the guy", "bulldog")
	# elif(!getFlag("FightClubModule.BulldogBypassed")):
	# 	addButtonUnlessLate("Bulldog", "Approach the guy", "bulldogtalk")
	# else:
    addButton("The Underground", "Go down to the fight club", "fightclub")


func getPriority():
	return 0

func onButton(_method, _args):
	if(_method == "bulldog"):
		runScene("BulldogFirstTimeScene")
		setFlag("FightClubModule.BulldogFirstTimeHappened", true)
	if(_method == "bulldogtalk"):
		runScene("BulldogTalkScene")
	if(_method == "fightclub"):
		GM.pc.setLocation("custom_fight_entrance")
		GM.main.reRun()
