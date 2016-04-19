

function room11()
	location = 11
	print("")
	print ("After sobering up (or not) you finally make it to U-Pawn-It")
	print("Once you manage to get inside, you head to the counter.")
	print("The sales representive points to a sign that states:")
	print("GOLD IS ONLY THE TRUE CURRENCY!")
	print("Hopefully, you have some.....")
	list()
	local move = parse()
	-- getting nuclear football
	if move == 15 then 
		if (items["gold"] == -1) then
		   if(items["nuclearfootball"] == location) then
		   items["gold"] = 0
		   items["nuclearfootball"] = -1
		   print("After much consideration and a boxing match with")
		   print("a bear (it is Russia after all), you are given")
		   print("the almighty nuclear football.")
		   print("Time to finally evenge your grade.")
		   return room11();
		   end
		   -- if you don't have gold
		  print("you cannot obtain the nuclear football at this time.")
		  print("Please try again later.")
		  return room11();
		   end
		 end  
		
			
	
	
	
	if move == 0 then return room11() end

	if move == 1 then 
		print ("You can't move that way")
		return room11();
	end

	if move == 2 then 
	print ("You can't move that way")
		return room11();
	end

	if move == 3 then 
		return room10();
	end

	if move == 4 then 
		     print ("You can't move that way")
            	return room11();
        end


	print "I don't understand your actions!"
	return room11()

end
