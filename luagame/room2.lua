

function room2()
	location = 2
	print("")
	print ("You are standing in Rrrick's Pawn Shop.  There is")
	print ("lots of junk here.  Some of it looks like it may")
	print ("have been questionably acquired.");
	list()
	local move = parse()
	if move == 0 then return room2() end

	if move == 1 then 
		print ("You can't move that way")
		return room2();
	end

	if move == 2 then 
		print ("You can't move that way")
		return room2() end

	if move == 3 then 
		
		return room3();
	end

	if move == 4 then return room1();
        end


	print "I don't understand your actions!"
	return room2()

end
