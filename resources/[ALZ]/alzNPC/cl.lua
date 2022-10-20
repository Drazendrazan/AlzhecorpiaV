Citizen.CreateThread(function()
	for i = 1, 13 do
		EnableDispatchService(i, false)
	end
	while true do
		SetVehicleDensityMultiplierThisFrame((500/100)+.0)
		SetPedDensityMultiplierThisFrame((500/100)+.0)
		SetRandomVehicleDensityMultiplierThisFrame((500/100)+.0)
		SetParkedVehicleDensityMultiplierThisFrame((500/100)+.0)
		SetScenarioPedDensityMultiplierThisFrame((500/100)+.0, (500/100)+.0)
		SetRandomBoats(false)
		SetRandomTrains(false)
        SetGarbageTrucks(true)
		Citizen.Wait(0)
	end
end)