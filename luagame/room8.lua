
function room8()
	location = 8
	print("")
	--  forcing you to get rid sword
	-- teleports back to the gates of fort knox if you have the sword
	if (items["sword"] == -1) then
	print("Are you nuts, you can't have a sword here.")
	print("Better go drop it someplace else...... Perhaps near a gate")
	return room3()
	end
	
	
	print ("You are standing in the airport. ")
	print("You start to head to the ticket counter, when you realize")
	print("That you don't nearly have enough funds to fly to the Ukraine.")
	print("The sales person points to a sign that saids: ")
	print("NO MEDIEVAL OBJECTS ALLOW!")
	print("You realize your best opition is to trade Dr. Pledger.")
	
	list()
	local move = parse()
	if move == 0 then return room1() end
     -- trading pledger
	 if move == 11 then
	  if events["pledger"] == 1 then
			events["pledger"] = 0
			events["planeticket1"] = 1
			events["planeticket2"] = 1
			print("After a very loud argument with the ticket representive,")
			print("you sucessfully trade Dr.Pledger for two plane tickets.")
			print("If you had any morals, you just lost them.")
			return room8();
	 end
	
		print("How can you trade Dr. Pledger if you don't have him.")
		print("better go and find him. ")
		return room8()
	end
	
	 -- going on a plane
	if move == 1 then 
	if events["planeticket1"] == 1 then
	    events["planeticket1"] = 0 
		return room9();
		-- no flying without a ticket
	end
	print("Your not flying anywhere without tickets.")
	print("You get away with a lot in this game, flying")
	print("without a ticket you don't. ")
	return room8();
	end

	if move == 2 then return room2() end

	if move == 3 then 
    print ("You can't move that way")
		return room8();
	end

	if move == 4 then 
		
            	return room3();
        end


	print "I don't understand your actions!"
	return room8()

end