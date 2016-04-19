function room12()
	location = 12
	print("")
	-- if put gets drunk
if (events["putinHP"]==0) then
    events["knowledge"] =1
	events["putinHP"]=-1
	print("After you and putin have a few too many, ")
	print("he starts to tell war stories from his childhood.")
	print("He mentions seeing a nuclear football in a store called")
	print("U-Pawn-it.")
	print("You might want to go there once you sober up.")
	return room12();
	end
	print ("You Stumble into a bar.")
	print(" you see, out of all people, Putin sitting at the counter.")
	print("After much thought, you decide to go over there.")
	print("in order to secure the launch codes you need to trade")
	print("something of the highest value.")
	print("perhaps a magical cup will work.....")
	list()
		local move = parse()
	if move == 0 then return room12() end
	-- getting putin drunk
	 if move == 14 then
		if funds >= 4 then 
			   funds = funds -4
			if (math.random(2) ==1) then
				print "Putin Takes a shot."
				print"you take a shot."
				print"everyone is happy."
				events["putinHP"] = events["putinHP"]-1;
				return room12();
			end
				print "He refuse to do a shot.";
				print"He does have to run a country after all."
				return room12();
			end
			-- if you don't have enough funds
		print("You do no have enough funds to buy a drink.")
		print("Putin only accepts the highest quality of Russian")
		print("vodka there is. ")
		return room12();
		end
	
	-- trading holy grail
	if move == 13 then
		if (items["holygrail"] == -1) then
			if (events["boughtgrail"] == 1) then
				items["holygrail"] = 0;
				events["launchcode1"] =1
				events["launchcode2"] =1
				events["launchcode3"] =1
				print("upon giving Putin the holy grail, he gives you launch codes.")
				print("The launch codes are titled: launchcode1, launchcode2, and ")
				print("launchcode3. Only one of them will denotate the nuclear football")
				print("now if only there was a way for putin to give you the location of the ")
				print("nuclear football..... Perhaps a drinking contest.")
		        return room12();
			end
				
		end
		-- if you don't have holy grail
		print(" you do not have the holy grail.")
		print(" perhaps you should find it.")	
			return room12();

	end
    
 
	
  
	
  

	if move == 1 then 
	return room10();
	end

	if move == 2 then
		print ("You can't move that way")
		return room12();
	end

	if move == 3 then 
			print ("You can't move that way")
		return room12();
	end


	if move == 4 then 
			print ("You can't move that way")
		return room12();
	end

            	


	print "I don't understand your actions!"
	return room12()

end
