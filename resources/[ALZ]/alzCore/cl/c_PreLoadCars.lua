local isVehiclesLoaded = false

local vehicles = {
"berkut",
"brickadeb",
"brickaded",
"brickadef",
"brickader",
"bsgviper",
"command",
"command2",
"darkstar",
"f22a",
"ghispo2",
"as350",
"lguardmav",
"maverick2",
"newsmav",
"mig31",
"mq9",
"03expeditionr",
"11caprice",
"14charger",
"18charger",
"16explorer",
"16taurus",
"18tahoe",
"19durango",
"newvic",
"riot",
"spirit",
"flatbed3",
"dilettante2",
"g6buffalo",
"g6mesa",
"stockade2",
"insurgent",
"astockade",
"aburrito",
"aboxville",
"freight",
"freightcar",
"freightcar2",
"freightgrain",
"freightcont1",
"freightcont2",
"freighttrailer",
"tankercar",
"metrotrain",
"bus",
"airbus",
"coach"
}

Citizen.CreateThread(function()
  while true do
		Citizen.Wait(0)
			if not isVehiclesLoaded then
			for i, name in ipairs(vehicles) do
				targetVehicle = name
				if not IsModelInCdimage(targetVehicle) or not IsModelAVehicle(targetVehicle) then
					print("[VehicleLoader] Le véhicule " .. targetVehicle .. " n'a pas pu être chargé.")
					return
				end
				RequestModel(targetVehicle)
				while not HasModelLoaded(targetVehicle) do
                    print("[VehicleLoader] Nous chargeons le véhicule " .. targetVehicle .. "...")
					Citizen.Wait(500) 
				end
                if HasModelLoaded(targetVehicle) then
                end
				SetModelAsNoLongerNeeded(targetVehicle)
			end
			isVehiclesLoaded = true
		end
  end
end)