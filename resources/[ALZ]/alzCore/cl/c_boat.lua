attachKey = 86
attachKeyName = "~INPUT_VEH_HORN~"


function GetVehicleInDirection(cFrom, cTo)
    local rayHandle = CastRayPointToPoint(cFrom.x, cFrom.y, cFrom.z, cTo.x, cTo.y, cTo.z, 10, GetPlayerPed(-1), 0)
    local _, _, _, _, vehicle = GetRaycastResult(rayHandle)
    return vehicle
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(ped)
        if veh ~= nil then
            if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == "DINGHY" then 
                local belowFaxMachine = GetOffsetFromEntityInWorldCoords(veh, 1.0, 0.0, -1.0)
				local boatCoordsInWorldLol = GetEntityCoords(veh)
                local trailerLoc = GetVehicleInDirection(boatCoordsInWorldLol, belowFaxMachine)
                
				if GetDisplayNameFromVehicleModel(GetEntityModel(trailerLoc)) == "BOATTRAILER" then
                    if IsEntityAttached(veh) then -- Is boat already attached?
                        if IsControlJustReleased(1, attachKey) then -- detach
							DetachEntity(veh, false, true)
						end
                        Citizen.InvokeNative(0x8509B634FBE7DA11, "STRING") -- BeginTextCommandDisplayHelp()
						Citizen.InvokeNative(0x5F68520888E69014, "Appuyez sur " .. attachKeyName .. " pour détacher le véhicule.")
						Citizen.InvokeNative(0x238FFE5C7B0498A6, 0, false, true, -1) -- EndTextCommandDisplayHelp()
                    else
                        if IsControlJustReleased(1, attachKey) then -- Attach
							AttachEntityToEntity(veh, trailerLoc, 20, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
							TaskLeaveVehicle(ped, veh, 64)
                        end
                        Citizen.InvokeNative(0x8509B634FBE7DA11, "STRING") -- BeginTextCommandDisplayHelp()
						Citizen.InvokeNative(0x5F68520888E69014, "Appuyez sur " .. attachKeyName .. " pour attacher le véhicule.")
						Citizen.InvokeNative(0x238FFE5C7B0498A6, 0, false, true, -1) -- EndTextCommandDisplayHelp()
					end
                end
            end
        end
    end
end)
