

function room5()
	location = 5
	print("")
	print ("You have teleported to florida.")
	print("You think about permentaly re-locating here")
	list()
	local move = parse()
	if move == 7 then 
	-- getting prize ticket
		if(items["prizeticket"] == location) then
			print("you have picked up the prize ticket. maybe you will win something.")
			items["prizeticket"] = -1;
				return room5();
		end
		end
		-- getting atm card
  if move == 8 then 
		if(items["atmcard"] == location) then
			print("you have picked up the atm card. You decide to not find the owner.")
			print("if you use the card, you will be commiting fraud")
			items["atmcard"] = -1;
			return room5();
		end
	end
	if move == 0 then return room4() end

	if move == 2 then 
	print ("You can't move that way")
		return room5();
	end

	if move == 1 then 
		return room3() end

	if move == 3 then 
		print ("You can't move that way")
		return room5();
	end

	if move == 4 then 
		print ("You can't move that way")
		return room5();
	end


	print "I don't understand your actions!"
	return room5()

end
