

function room4()
	location = 4
	print("")
	print ("You are standing in the vault of Fort Knox.")
	list()
	local move = parse()
	if move == 6 then 
	-- stealing the gold
		if(items["gold"] == location) then
			print("you have picked up the gold. I hope you remember to write it off on your taxes.")
			items["gold"] = -1;
			return room4();
		end
	end
  
	if move == 0 then return room4() end

	if move == 2 then 
		return room3();
	end

	if move == 1 then 
		print ("You can't move that way")
		return room4() end

	if move == 3 then 
		print ("You can't move that way")
		return room4();
	end

	if move == 4 then 
		print ("You can't move that way")
		return room4();
	end


	print "I don't understand your actions!"
	return room4()

end
