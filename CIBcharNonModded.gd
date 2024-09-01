extends Character

func _init():
	var _isModded = false
	id = "caninbad"
	npcCharacterType = CharacterType.Generic

	pickedSkin = "VerySpiky"
	pickedSkinRColor = Color("ffe10000")
	pickedSkinGColor = Color("ff911212")
	pickedSkinBColor = Color("ff490010")
	npcSkinData = {
	"hair": {"r": Color("ff821010"),"g": Color("ff730e0e"),"b": Color("ffa11313")},
	"head": {"r": Color("ff911212"),"g": Color("ffe3776f"),"b": Color("ffff0000"),"skin": "WildSkin"},
	"tail": {"r": Color("ffc30d0d"),"b": Color("ffff0000"),"skin": "EmptySkin"},
	"legs": {"b": Color("ffc700ff"),"skin": "SmuttySkin"},
	"arms": {"b": Color("ffc000ff"),"skin": "SmuttySkin"},
	"horns": {"r": Color("ffd8c2c2"),"g": Color("ffc43737"),"b": Color("ff938f9b"),},
	"penis": {"r": Color("ffc30d0d"),"b": Color("ffc40000"),},
	"breasts": {"r": Color("ffc30d0d"),"skin": "SmuttySkin"},
	"body": {"skin": "WildSkin"},
	}
	npcPersonality = {
		PersonalityStat.Brat: -0.220776,
		PersonalityStat.Mean: -1,
		PersonalityStat.Subby: -0.001735,
		PersonalityStat.Impatient: -0.019486,
		PersonalityStat.Naive: 0.2,
		PersonalityStat.Coward: 0.122201,
	}
	npcLevel = 0
	npcBasePain = 500
	npcBaseLust = 500
	npcBaseStamina = 2500
	npcHasMenstrualCycle = true
	npcArmor = {
		DamageType.Physical: 20,
		DamageType.Lust: 20,
		DamageType.Stamina: 20,
	}
	npcRestraintStrugglePower = 1.5
	# npcRestraintMinigameResultMin = 0.9
	# npcRestraintMinigameResultMax = 1.3 # those aren't used anymore I supposed
	npcBaseRestraintDodgeChanceMult = 0.5

	npcLustInterests = {
		InterestTopic.TallyMarks: Interest.SlightlyDislikes,
		InterestTopic.Bodywritings: Interest.SlightlyDislikes,
		InterestTopic.Gags: Interest.Dislikes,
		InterestTopic.Blindfolds: Interest.Dislikes,
		InterestTopic.BDSMRestraints: Interest.Hates,
		InterestTopic.ButtPlugs: Interest.SlightlyDislikes,
		InterestTopic.VaginalPlugs: Interest.SlightlyDislikes,
		InterestTopic.FeminineBody: Interest.ReallyLikes,
		InterestTopic.AndroBody: Interest.ReallyLikes,
		InterestTopic.MasculineBody: Interest.ReallyLikes,
		InterestTopic.ThickBody: Interest.ReallyLikes,
		InterestTopic.SlimBody: Interest.Dislikes,
		InterestTopic.ThickButt: Interest.ReallyLikes,
		InterestTopic.SlimButt: Interest.Dislikes,
		InterestTopic.NoBreasts: Interest.Dislikes,
		InterestTopic.SmallBreasts: Interest.SlightlyDislikes,
		InterestTopic.MediumBreasts: Interest.Loves,
		InterestTopic.BigBreasts: Interest.ReallyLikes,
		InterestTopic.LactatingBreasts: Interest.ReallyLikes,
		InterestTopic.StuffedPussy: Interest.ReallyLikes,
		InterestTopic.StuffedAss: Interest.ReallyLikes,
		InterestTopic.StuffedPussyOrAss: Interest.ReallyLikes,
		InterestTopic.Pregnant: Interest.ReallyLikes,
		InterestTopic.StuffedThroat: Interest.ReallyLikes,
		InterestTopic.CoveredInCum: Interest.Likes,
		InterestTopic.CoveredInLotsOfCum: Interest.Likes,
		InterestTopic.FullyNaked: Interest.Loves,
		InterestTopic.ExposedPussy: Interest.Loves,
		InterestTopic.ExposedAnus: Interest.Loves,
		InterestTopic.ExposedBreasts: Interest.Loves,
		InterestTopic.ExposedCock: Interest.Loves,
		InterestTopic.ExposedPanties: Interest.Dislikes,
		InterestTopic.ExposedBra: Interest.Dislikes,
		InterestTopic.LooseAnus: Interest.Loves,
		InterestTopic.LoosePussy: Interest.Loves,
		InterestTopic.TightAnus: Interest.Loves,
		InterestTopic.TightPussy: Interest.Loves,
		InterestTopic.HasVaginaAndCock: Interest.Loves,
		InterestTopic.BigCock: Interest.Loves,
		InterestTopic.AverageCock: Interest.KindaLikes,
		InterestTopic.SmallCock: Interest.KindaLikes,
		InterestTopic.NoCock: Interest.KindaLikes,
		InterestTopic.HasCockOnly: Interest.KindaLikes,
	}

	npcFetishes = {
		"AnalSexGiving": "ReallyLikes",
		"AnalSexReceiving": "Loves",
		"BeingBred": "Loves",
		"Bondage": "ReallyLikes",
		"Breeding": "Loves",
		"Condoms": "Likes",
		"Exhibitionism": "Loves",
		"FeetplayGiving": "Likes",
		"FeetplayReceiving": "Likes",
		"HypnosisHypnotist": "Hates",
		"HypnosisSubject": "Hates",
		"Lactation": "ReallyLikes",
		"OralSexGiving": "Loves",
		"OralSexReceiving": "Likes",
		"Rigging": "Loves",
		"RimmingGiving": "ReallyLikes",
		"RimmingReceiving": "ReallyLikes",
		"Sadism": "Dislikes",
		"SeedMilking": "ReallyLikes",
		"Tribadism": "ReallyLikes",
		"UnconsciousSex": "SlightlyDislikes",
		"VaginalSexGiving": "Loves",
		"VaginalSexReceiving": "Loves"
	}

func _getName():
	return "CanInBad"

func getGender():
	return Gender.Androgynous

func getSmallDescription():
	return "Funny looking dragon."

func getSpecies():
	return ["dragon"]

func getThickness() -> int:
	return 75

func getFemininity() -> int:
	return 75

func createBodyparts():
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthrobody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("buffarms"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anuswomb"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("vagina"))
	var breasts = GlobalRegistry.createBodypart("humanbreasts")
	breasts.size = 15 # size O
	giveBodypartUnlessSame(breasts)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("demontail"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("digilegs"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("dragonhead"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("messyhair"))
	var penis = GlobalRegistry.createBodypart("equinepenis")
	penis.lengthCM = 65
	penis.ballsScale = 1
	giveBodypartUnlessSame(penis)

func onFightStart(_context = {}):
	addLust(-getLust())
	addPain(-getPain())
	.onFightStart(_context)
