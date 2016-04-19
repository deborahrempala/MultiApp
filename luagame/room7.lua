function room7()
	location = 7
	print("")
	print ("You are in the Quarterdeck. Today's Special is egg plant.")
	print("You must pay $10 for lunch.")
	print("$10 has been deducted from your funds.")
	print("You see Dr. Tom Pledger sitting alone.")
	print("You think that kidnapping him would be a wonderful idea,")
	print("Perhaps showing him a prize ticket would help in you quest.")
	list()
	local move = parse()
	-- having lunch
	if (move == 10) then 
		if (items["prizeticket"] == -1) then
		
				events["pledger"] = 1
				print("You tell Dr.Pledger about the contest he could win.")
					print("You tell him he could win a professional photo shoot for,")
					print("his dogs.")
					print("he decides to join you on his quest.")
			    return room7();
		   	
		end
		-- if no prize ticket
		print("you do not have the prize ticket. Perhaps you can find it")
		print("someplace warm...")
		return room7();
		
		
	end
	
	if move == 0 then return room1() end
    
	if move == 1 then 
		
		return room6();
	end

	if move == 2 then
	print ("You can't move that way")
            	return room7();
        end
		
	if move == 3 then 
	print ("You can't move that way")
            	return room7();
        end

	if move == 4 then 
		print ("You can't move that way")
            	return room7();
        end


	
	print "I don't understand your actions!"
	return room7()
   
end