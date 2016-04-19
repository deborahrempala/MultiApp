

function room10()
	location = 10
	print("")
	print ("You are in the heart of an unknown Ukraine City.")
	print("It's unknown because you can't speak Russian")
	list()
	local move = parse()
	if move == 0 then return room10() end

	if move == 1 then 
	-- can't go to u-pawn-it without knowledge
	   if events["knowledge"] == 1 then
		return room11();
	    end
		print("Armed with 0 knowledge, you walk in circles.")
		return room10();
	end

	if move == 2 then
	print("you can't move that way!")
	return room10();
	 end

	if move == 3 then 
		return room12();
	end

	if move == 4 then 
		       
            	return room9();
        end


	print "I don't understand your actions!"
	return room10()

end
