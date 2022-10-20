Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
				-- Hologram , 144.6428
		if GetDistanceBetweenCoords( 231.4001, -885.9744, 30.4922, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 231.4001, -885.9744, 30.4922  -1.400, "Bienvenue sur ~g~Alzhecorpia~w~V.", 1, 0.1, 0.1)
			Draw3DText( 231.4001, -885.9744, 30.4922  -1.600, "Vous êtes dans une zone sécurisée.", 1, 0.1, 0.1)
			Draw3DText( 231.4001, -885.9744, 30.4922  -1.800, "Éloignez-vous d'ici pour vous battre.", 1, 0.1, 0.1)		
		end
	end
end

function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
    end