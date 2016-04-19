

function room1()
	location = 1
	print("")
	print ("You are in CAS 207.  You just failed the CSCI 371 final.")
	list()
	local move = parse()
	--this decides if you win the game
	if move == 17 then 
	if(items["nuclearfootball"] == -1) then
			if(events["launchcode1"] == 1) then 
						-- EXTRA FEATURE
							num = math.random(3)
							if num == 1 then
								print("Unforuntaly your Device did not explode, Try again.")
								return room1();
							end
							if num == 2 then
								print("Unforuntaly, the room is locked please try again.")
								return room1();
							end
							if num == 3 then
									print("Congratulations, you won the game!")
									print("You also died in the process.")
									print("GAME OVER!")
									endgame()
							end
			end
				
			
	
	end
	print("you don't have the proper equiment.")
	print("you should probably play the game first...")
	return room1();
end

	
	
	
	  if move == 0 then return room1() end

	
	

    
	
	
	
		
	
	if move == 1 then 
		print ("You can't move that way")
		return room1();
	end

	if move == 2 then return room2() end

	if move == 3 then 
		return room3();
	end

	if move == 4 then 
		
            	return room6();
      end

-- 



	
	
	


	print "I don't understand your actions!"
	return room1()

	end
