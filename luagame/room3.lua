

function room3()
	location = 3
	print("")
	print ("You are standing at the gates of Fort Knox.")
	list()

	if (events["troll"] == 0) then
		print "There is a troll sleeping by the entrance to the caves on";
		print "the west";
		end

	if (events["troll"] == 1) then
		print "The angry troll to the west takes swing at you!";
		if (math.random(100) <= 25) then
			print "He connects with your head.  No loss there."
			events["HP"] = events["HP"] - 3;
		else
			print "He missed.  You were lucky.";
		end
	end

	if (events["troll"] == 2) then
		print "There is a dead troll in the corner.  He smells bad.";
	end



	if (events["HP"] <= 0) then
		print "You have succumbed to your wounds";
		endgame();
	end

	local move = parse()
	if move == 0 then return room3() end

	if move == 5 then
		if (events["troll"] == 2) then
			print "That's not classy.  Don't hit a guy when he's down."
			return room3() 
		end
		events["troll"] = 1;
		if (math.random(100) <= 50)and(items["sword"] == -1)  then
			print "A solid hit.  You have damaged the poor troll."
			events["trollHP"] = events["trollHP"] - 1
			if (events["trollHP"] <= 0) then
				print "You killed a troll.  Hopefully you have a permit for that."
				events["troll"] = 2;
				return room3()
			end
		else
			print "Your aim is as good as Schemm's"
			return room3()
		end
	end

	if move == 1 then 
		return room1();
	end

	if move == 2 then 
		
		return room8() end

	if move == 3 then 
	if (events["troll"] == 1) then
			print "You aren't sneaking past an angry troll.";
			return room3()
		end

		if (events["troll"] == 2) then
			print "You sneak past the dead troll. Well done."
			return room5()
		end

		if (math.random(20) == 7) then
			print "You sneak past the sleeping troll.  He must be dreaming"
			print "about eating students."
			return room5()
		end

		print "You were not successful at sneaking.  You woke up the troll."
		print "He looks angry!"
		events["troll"] = 1;
		return room4();
	end
	

	if move == 4 then 
		if (events["troll"] == 1) then
			print "You aren't sneaking past an angry troll.";
			return room3()
		end

		if (events["troll"] == 2) then
			print "You sneak past the dead troll. Well done."
			return room4()
		end

		if (math.random(20) == 7) then
			print "You sneak past the sleeping troll.  He must be dreaming"
			print "about eating students."
			return room4()
		end

		print "You were not successful at sneaking.  You woke up the troll."
		print "He looks angry!"
		events["troll"] = 1;
		return room3();
	end


	print "I don't understand your actions!"
	return room3()

end
