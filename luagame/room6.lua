function room6()
	location = 6
	print("")
	print ("You are in the Cisler Center. A center for students.")
	print("you see an ATM on the wall.")
	print("You walk towards the atm... hopefully you remembered your card.")
	list()
	local move = parse()
	-- getting money from atm
	if (move == 9) then 
		if (items["atmcard"] == -1) then
		
				funds = 50 + funds
				print ("you have sucessfully commited credit card fraud.")
				print("You have added $50 to your funds.")
				print("You are now on the FBI, CIA, NSA and homeland security watch list. ")
			    return room6();
		   	
		end
		print("you do not have the atm card. Perhaps you can find it")
		print("someplace warm...")
		return room6();
		
		
	end
	
	if move == 0 then return room1() end
    
	if move == 1 then 
		
		return room1();
	end

	if move == 2 then
	
		return room1();
		end
		-- entering the qd, must pay $10
	if move == 3 then 
	funds = funds - 10
		return room7();
	end

	if move == 4 then 
		print ("You can't move that way")
            	return room6();
        end


	
	print "I don't understand your actions!"
	return room6()
   
end