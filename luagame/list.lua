
function list()
	print("You see:")
	for name, value in pairs(items) do
             if (value == location) then
                 print ("  "..name)
			 end
        end
end
