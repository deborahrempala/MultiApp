

function room9()
	location = 9
	print("")
	print ("You Sucessfully land at the ukraine airport.")
	print("You are a bit jet lagged.")
	
	list()
	local move = parse()
	if move == 0 then return room9() end

	if move == 1 then 
		print ("You can't move that way")
		return room9();
	end

	if move == 2 then return room10() end
   -- flying back
	if move == 3 then 
	   if events["planeticket2"] == 1 then
	    events["planeticket2"] = 0 
		return room8();
		
	end
	-- no flying without a ticket
	print("Your not flying anywhere without tickets.")
	print("You get away with a lot in this game, flying")
	print("without a ticket you don't. ")
	return room9();
		
	end

	if move == 4 then 
			print ("You can't move that way")
            	return room9();
        end


	print "I don't understand your actions!"
	return room9()

end
