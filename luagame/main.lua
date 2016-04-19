
-- main file
require("parse")
require("list")
require("room1")
require("room2")
require("room3")
require("room4")
require ("room5")
require ("room6")
require ("room7")
require ("room8")
require ("room9")
require ("room10")
require ("room11")
require ("room12")
funds = 50
location = 1


items = {	["sword"] = 2,
		["gold"] = 4,
		["holygrail"] = 2,
		["atmcard"] =5,
		["prizeticket"] =5,
		["launchcode1"] =0,
		["launchcode2"] =0,
		["launchcode3"] =0,
		["nuclearfootball"] = 11,
	}

events = {	["boughtsword"] = 0,
		["troll"] = 0,
		["money"] = 10,
		["trollHP"] = 3,
		["HP"] = 10,
		["boughtgrail"] = 0,
		["getatm"] =0,
		["getticekt"] =0,
		["pledger"] = 0,
		["planeticket1"] =0,
		["planeticket2"] =0,
		["knowledge"] =0,
		["putinHP"] = 2,

	}


room1()
