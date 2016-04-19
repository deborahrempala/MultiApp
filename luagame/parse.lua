-- parsing file
-- List of known phrases

-- -1 Error
-- 0 Handled by generic code
-- 1 North
-- 2 East
-- 3 South
-- 4 West


function parse()
	local str = io.read()

	if generics(str) == 1 then return 0 end
	-- start war
	if str == "war" then return 17 end
	if str == "bombs away" then return 17 end
	if str == "start war" then return 17 end
	
	
	-- directions
	if str == "north" then return 1 end
	if str == "east" then return 2 end
	if str == "south" then return 3 end
	if str == "west" then return 4 end
    -- directions
	if str == "go north" then return 1 end
	if str == "go east" then return 2 end
	if str == "go south" then return 3 end
	if str == "go west" then return 4 end
    -- directions
	if str == "n" then return 1 end
	if str == "e" then return 2 end
	if str == "s" then return 3 end
	if str == "w" then return 4 end
    -- fighting the troll
	if str == "attack troll" then return 5 end
	if str == "fight troll" then return 5 end
	if str == "attack troll with sword" then return 5 end
   -- getting the gold
	if str =="pick up gold" then return 6 end
	if str == "grab gold"    then return 6 end
	if str == "steal gold"   then return 6 end
	-- grabbing prize ticket
	if str =="pick up ticket" then return 7 end
	if str == "grab ticket"    then return 7 end
	-- grabbing atm card
	if str =="pick up atm card" then return 8 end
	if str == "grab atm card"    then return 8 end
	-- getting more money
	if str == "insert card" then return 9 end
	if str == "get money" then return 9 end
	if str == "commit fraud" then return 9 end
	-- kidnap dr. pledger
	if str == "kidnap pledger" then return 10 end
	if str == "show ticket" then return 10 end
	if str == "talk to pledger" then return 10 end
	-- get plane tickets
	if str == "trade pledger" then return 11 end
	if str == "handover pledger" then return 11 end
	if str == "give pledger" then return 11 end
	-- handover holygrail
	if str =="trade cup" then return 13 end
	if str =="give cup"  then return 13 end
	-- drinking contest
	if str =="take shot" then return 14 end
	if str =="take drink" then return 14 end
	if str =="drink putin under the table" then return 14 end
	-- give gold 
	if str =="give gold" then return 15 end
	if str =="handover gold"  then return 15 end
	
	if str == "quit" then return endgame() end


	print "Command not understood"
return -1
end



-- Function Handle Generics
-- These are things that will be common to all rooms handle them here 
-- instead of having to repeat the code in each room
function generics(str)


	if (str == "get sword")then 
		if (items["sword"] == location) then
			if (events["boughtsword"] == 1) then
				items["sword"] = -1;
				print ("Though it is heavy, you pick up the questionable sword again.")
				return 1;
			else
				if (funds >= 30) then
					print ("You acquire a questionable sword.")
					funds= funds - 30;
					items["sword"] = -1;
					events["boughtsword"] = 1;
					return 1
				else
					print ("The sword is of the highest quality, but you don't have")
					print ("enough to buy it.  Rrrick points to the sign that says")
					print ("NO CREDIT!")
					return 1
			  end
			end
		else
			print("There is no sword here.  Tough.")
			return 1
		end
	end
	if (str == "get holy grail")then 
		if (items["holygrail"] == location) then
			if (events["boughtgrail"] == 1) then
				items["holygrail"] = -1;
				print ("Though it is a relgious artifact, you pick up the holy grail.")
				return 1;
			else
				if (funds >= 20) then
					print ("You acquire a magical holy grail.")
					funds= funds - 20;
					items["holygrail"] = -1;
					events["boughtgrail"] = 1;
					return 1
				else
					print ("The holy grail, is a priceless artifact. unfourntaly, you do not have")
					print (" the funds to buy it.  Rrrick points to the sign that says")
					print ("NO CREDIT!")
					return 1
			  end
			end
		else
			print("There is no holy grail here.  Tough.")
			return 1
		end
	end
	if ((str == "drop sword")and(items["sword"] == -1)) then
		print ("You drop the sword with a clang.")
		items["sword"] = location;
		return 1
		end
		
	if ((str == "drop holy grail")and(items["holygrail"] == -1)) then
		print ("You drop the holygrail with a bang.")
		print("I hope you didn't break it......")
		items["holygrail"] = location;
		return 1
		end
		
		

	if (str == "help") then
		print ("The time for help is long past.  Maybe you should have");
		print ("gone to office hours.  Your only hope now is to end");
		print ("civilization as we know it so the grade doesn't end up");
		print ("on your official transcript.");
		return 1;
	end

	if (str == "inventory") or (str == "i") then
		print ("You are carrying:")
		for name, value in pairs(items) do
			if (value == -1) then
				print (name)
			end
		end
	 	print ("You have " .. funds .. " dollars.")
		return 1
	end
	return 0
end

-- Function endgame 
-- Handle the end of the game

function endgame()
	print "Game Over.  You failed to stop your failure"
	os.exit()
end

