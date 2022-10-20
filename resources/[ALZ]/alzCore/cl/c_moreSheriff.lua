local HasRunAlready = false
local PlayerData = {}
Citizen.CreateThread(function()
   while true do
	ped = GetPlayerPed(-1)
   	Citizen.Wait(0)
	
	if not HasRunAlready then
		-- spawn peds
		NewDeputy()
		-- spawn cars
		NewDeputyVehicles()
		-- send them on their way
		RollOut()
		HasRunAlready = true
	end
	
	-- after incident get back in the vehicle and turn off lights and siren
	if IsPedGettingIntoAVehicle(SheriffPatrol1) and IsVehicleSirenAudioOn(spawnedVeh) then
			SetVehicleSiren(spawnedVeh, false)
	end
	if IsPedGettingIntoAVehicle(SheriffPatrol2) and IsVehicleSirenAudioOn(spawnedVeh1) then
			SetVehicleSiren(spawnedVeh1, false)
	end
	if IsPedGettingIntoAVehicle(SheriffPatrol3) and IsVehicleSirenAudioOn(spawnedVeh2) then
			SetVehicleSiren(spawnedVeh2, false)
	end
	if IsPedGettingIntoAVehicle(SheriffPatrol4) and IsVehicleSirenAudioOn(spawnedVeh3) then
			SetVehicleSiren(spawnedVeh3, false)
	end
	if IsPedGettingIntoAVehicle(SheriffPatrol5) and IsVehicleSirenAudioOn(spawnedVeh4) then
			SetVehicleSiren(spawnedVeh4, false)
	end
	if IsPedGettingIntoAVehicle(SheriffPatrol6) and IsVehicleSirenAudioOn(spawnedVeh5) then
			SetVehicleSiren(spawnedVeh5, false)
	end
	if IsPedGettingIntoAVehicle(SheriffPatrol7) and IsVehicleSirenAudioOn(spawnedVeh6) then
			SetVehicleSiren(spawnedVeh6, false)
	end
	
   end	
   end
)
	
function NewDeputy()
		RequestModel(0xB144F9B9)
		Wait(500)
		SheriffPatrol1 = CreatePed(30, 0xB144F9B9, 1853.79, 3686.12, 34.35, 211.93, true, false)
		SetPedArmour(SheriffPatrol1, 100)
		SetPedRelationshipGroupHash(SheriffPatrol1, 0xA49E591C)
		SetPedAsEnemy(SheriffPatrol1, false)
		GiveWeaponToPed(SheriffPatrol1, GetHashKey('WEAPON_PISTOL'), 68, false, true)
		GiveWeaponToPed(SheriffPatrol1, GetHashKey('WEAPON_PUMPSHOTGUN'), 100, false, true)
		--GiveWeaponToPed(SheriffPatrol1, GetHashKey('WEAPON_CARBINERIFLE'), 250, false, true)
		SetCurrentPedWeapon(SheriffPatrol1, GetHashKey('WEAPON_PISTOL'), 0)
		SetPedAccuracy(SheriffPatrol1, 60)
		SetPedDropsWeaponsWhenDead(SheriffPatrol1, true)
		SetDriverAbility(SheriffPatrol1, 1.0)
		Citizen.Wait(500)
	
		Wait(500)
		SheriffPatrol2 = CreatePed(30, 0xB144F9B9, 1849.319, 3689.196, 34.35, 211.93, true, false)
		SetPedArmour(SheriffPatrol2, 100)
		SetPedRelationshipGroupHash(SheriffPatrol2, 0xA49E591C)
		SetPedAsEnemy(SheriffPatrol2, false)
		GiveWeaponToPed(SheriffPatrol2, GetHashKey('WEAPON_PISTOL'), 68, false, true)
		GiveWeaponToPed(SheriffPatrol2, GetHashKey('WEAPON_PUMPSHOTGUN'), 100, false, true)
		--GiveWeaponToPed(SheriffPatrol2, GetHashKey('WEAPON_CARBINERIFLE'), 250, false, true)
		SetCurrentPedWeapon(SheriffPatrol2, GetHashKey('WEAPON_PISTOL'), 0)
		SetPedAccuracy(SheriffPatrol2, 60)
		SetPedDropsWeaponsWhenDead(SheriffPatrol2, true)
		SetDriverAbility(SheriffPatrol2, 1.0)
		Citizen.Wait(500)
		Wait(500)
		SheriffPatrol3 = CreatePed(30, 0xB144F9B9, 1852.879, 3690.237, 34.35, 211.93, true, false)
		SetPedArmour(SheriffPatrol3, 100)
		SetPedRelationshipGroupHash(SheriffPatrol3, 0xA49E591C)
		SetPedAsEnemy(SheriffPatrol3, false)
		GiveWeaponToPed(SheriffPatrol3, GetHashKey('WEAPON_PISTOL'), 68, false, true)
		GiveWeaponToPed(SheriffPatrol3, GetHashKey('WEAPON_PUMPSHOTGUN'), 100, false, true)
		--GiveWeaponToPed(SheriffPatrol3, GetHashKey('WEAPON_CARBINERIFLE'), 250, false, true)
		SetCurrentPedWeapon(SheriffPatrol3, GetHashKey('WEAPON_PISTOL'), 0)
		SetPedAccuracy(SheriffPatrol3, 60)
		SetPedDropsWeaponsWhenDead(SheriffPatrol3, true)
		SetDriverAbility(SheriffPatrol3, 1.0)
		Citizen.Wait(500)
		
		Wait(500)
		SheriffPatrol4 = CreatePed(30, 0xB144F9B9, 1856.98, 3689.077, 34.35, 211.93, true, false)
		SetPedArmour(SheriffPatrol4, 100)
		SetPedRelationshipGroupHash(SheriffPatrol4, 0xA49E591C)
		SetPedAsEnemy(SheriffPatrol4, false)
		GiveWeaponToPed(SheriffPatrol4, GetHashKey('WEAPON_PISTOL'), 68, false, true)
		GiveWeaponToPed(SheriffPatrol4, GetHashKey('WEAPON_PUMPSHOTGUN'), 100, false, true)
		--GiveWeaponToPed(SheriffPatrol4, GetHashKey('WEAPON_CARBINERIFLE'), 250, false, true)
		SetCurrentPedWeapon(SheriffPatrol4, GetHashKey('WEAPON_PISTOL'), 0)
		SetPedAccuracy(SheriffPatrol4, 60)
		SetPedDropsWeaponsWhenDead(SheriffPatrol4, true)
		SetDriverAbility(SheriffPatrol4, 1.0)
		Citizen.Wait(500)
		
		Wait(500)
		SheriffPatrol5 = CreatePed(30, 0xB144F9B9, 1851.705, 3683.314, 34.35, 211.93, true, false)
		SetPedArmour(SheriffPatrol5, 100)
		SetPedRelationshipGroupHash(SheriffPatrol5, 0xA49E591C)
		SetPedAsEnemy(SheriffPatrol5, false)
		GiveWeaponToPed(SheriffPatrol5, GetHashKey('WEAPON_PISTOL'), 68, false, true)
		GiveWeaponToPed(SheriffPatrol5, GetHashKey('WEAPON_PUMPSHOTGUN'), 100, false, true)
		--GiveWeaponToPed(SheriffPatrol5, GetHashKey('WEAPON_CARBINERIFLE'), 250, false, true)
		SetCurrentPedWeapon(SheriffPatrol5, GetHashKey('WEAPON_PISTOL'), 0)
		SetPedAccuracy(SheriffPatrol5, 60)
		SetPedDropsWeaponsWhenDead(SheriffPatrol5, true)
		SetDriverAbility(SheriffPatrol5, 1.0)
		Citizen.Wait(500)
		
		RequestModel(0x4161D042)
		Wait(500)
		SheriffPatrol6 = CreatePed(30, 0x4161D042, 1853.525, 3680.875, 34.35, 211.93, true, false)
		SetPedArmour(SheriffPatrol6, 100)
		SetPedRelationshipGroupHash(SheriffPatrol6, 0xA49E591C)
		SetPedAsEnemy(SheriffPatrol6, false)
		GiveWeaponToPed(SheriffPatrol6, GetHashKey('WEAPON_PISTOL'), 68, false, true)
		GiveWeaponToPed(SheriffPatrol6, GetHashKey('WEAPON_PUMPSHOTGUN'), 100, false, true)
		--GiveWeaponToPed(SheriffPatrol6, GetHashKey('WEAPON_CARBINERIFLE'), 250, false, true)
		SetCurrentPedWeapon(SheriffPatrol6, GetHashKey('WEAPON_PISTOL'), 0)
		SetPedAccuracy(SheriffPatrol6, 60)
		SetPedDropsWeaponsWhenDead(SheriffPatrol6, true)
		SetDriverAbility(SheriffPatrol6, 1.0)
		Citizen.Wait(500)
		
		Wait(500)
		SheriffPatrol7 = CreatePed(30, 0x4161D042, 1856.598, 3683.96, 34.35, 211.93, true, false)
		SetPedArmour(SheriffPatrol7, 100)
		SetPedRelationshipGroupHash(SheriffPatrol7, 0xA49E591C)
		SetPedAsEnemy(SheriffPatrol7, false)
		GiveWeaponToPed(SheriffPatrol7, GetHashKey('WEAPON_PISTOL'), 68, false, true)
		GiveWeaponToPed(SheriffPatrol7, GetHashKey('WEAPON_PUMPSHOTGUN'), 100, false, true)
		--GiveWeaponToPed(SheriffPatrol7, GetHashKey('WEAPON_CARBINERIFLE'), 250, false, true)
		SetCurrentPedWeapon(SheriffPatrol7, GetHashKey('WEAPON_PISTOL'), 0)
		SetPedAccuracy(SheriffPatrol7, 60)
		SetPedDropsWeaponsWhenDead(SheriffPatrol7, true)
		SetDriverAbility(SheriffPatrol7, 1.0)
		Citizen.Wait(500)
	end

function NewDeputyVehicles()
		vehiclehash = GetHashKey('sheriff')
       	RequestModel(vehiclehash)
		Wait(500)
		vehiclehash2 = GetHashKey('sheriff2')
       	RequestModel(vehiclehash2)
		Wait(500)
		if not IsPositionOccupied(1854.89, 3675.82, 34.59338, 2, false, true, false, false, false, 0, false) then
			spawnedVeh = CreateVehicle(vehiclehash2, 1854.89, 3675.82, 34.59338, 211.93, 0)
			SetVehicleDirtLevel(spawnedVeh, 0.1)
		else
			NoSpawnedVeh = true
		end
			if not IsPositionOccupied(1870.76, 3686.532, 34.59, 2, false, true, false, false, false, 0, false) then
			spawnedVeh1 = CreateVehicle(vehiclehash, 1870.76, 3686.532, 34.59, 211.93, 0)
			SetVehicleDirtLevel(spawnedVeh1, 0.1)
		else
			NoSpawnedVeh1 = true
		end
		
		if not IsPositionOccupied(1875.56, 3689.248, 34.59, 2, false, true, false, false, false, 0, false) then
			spawnedVeh2 = CreateVehicle(vehiclehash, 1875.56, 3689.248, 34.59, 211.93, 0)
			SetVehicleDirtLevel(spawnedVeh2, 0.1)
		else
			NoSpawnedVeh2 = true
		end
			if not IsPositionOccupied(1850.4, 3673.987, 34.59, 2, false, true, false, false, false, 0, false) then
			spawnedVeh3 = CreateVehicle(vehiclehash2, 1850.4, 3673.987, 34.59, 211.93, 0)
			SetVehicleDirtLevel(spawnedVeh3, 0.1)
		else
			NoSpawnedVeh3 = true
		end
			if not IsPositionOccupied(1846.853, 3671.842, 34.59, 2, false, true, false, false, false, 0, false) then
			spawnedVeh4 = CreateVehicle(vehiclehash, 1846.853, 3671.842, 34.59, 211.93, 0)
			SetVehicleDirtLevel(spawnedVeh4, 0.1)
		else
			NoSpawnedVeh4 = true
		end
			if not IsPositionOccupied(1866.488, 3693.719, 34.59, 2, false, true, false, false, false, 0, false) then
			spawnedVeh5 = CreateVehicle(vehiclehash, 1866.488, 3693.719, 34.59, 211.93, 0)
			SetVehicleDirtLevel(spawnedVeh5, 0.1)
		else
			NoSpawnedVeh5 = true
		end
		
			if not IsPositionOccupied(1861.675, 3703.319, 34.59, 2, false, true, false, false, false, 0, false) then
			spawnedVeh6 = CreateVehicle(vehiclehash, 1861.675, 3703.319, 34.59, 211.93, 0)
			SetVehicleDirtLevel(spawnedVeh6, 0.1)
		else
			NoSpawnedVeh6 = true
		end		
	end
		
function RollOut()
		if not NoSpawnedVeh then
			TaskVehicleDriveWander(SheriffPatrol1, spawnedVeh, 15.0, 439)
			Wait(2500)
		else
			TaskEnterVehicle(SheriffPatrol1, spawnedVeh1, 9000, 0, 1.5, 0, 0)
		end	
		
		if not NoSpawnedVeh1 then		
			TaskVehicleDriveWander(SheriffPatrol2, spawnedVeh1, 15.0, 439)
			Wait(2500)
		else
			TaskEnterVehicle(SheriffPatrol2, spawnedVeh2, 9000, 0, 1.5, 0, 0)
		end
		if not NoSpawnedVeh2 then
			TaskVehicleDriveWander(SheriffPatrol3, spawnedVeh2, 15.0, 439)
			Wait(2500)
		else
			TaskEnterVehicle(SheriffPatrol3, spawnedVeh3, 9000, 0, 1.5, 0, 0)
		end
		
		if not NoSpawnedVeh3 then
			TaskVehicleDriveWander(SheriffPatrol4, spawnedVeh3, 15.0, 439)
			Wait(2500)
		else
			TaskEnterVehicle(SheriffPatrol4, spawnedVeh4, 9000, 0, 1.5, 0, 0)
		end
		
		if not NoSpawnedVeh4 then		
			TaskVehicleDriveWander(SheriffPatrol5, spawnedVeh4, 15.0, 439)
			Wait(2500)
		else
			TaskEnterVehicle(SheriffPatrol5, spawnedVeh5, 9000, 0, 1.5, 0, 0)
		end		
		
		if not NoSpawnedVeh5 then		
			TaskVehicleDriveWander(SheriffPatrol6, spawnedVeh5, 15.0, 439)
			Wait(2500)
		else
			TaskEnterVehicle(SheriffPatrol6, spawnedVeh6, 9000, 0, 1.5, 0, 0)
		end
		
		if not NoSpawnedVeh6 then	
			TaskVehicleDriveWander(SheriffPatrol7, spawnedVeh6, 15.0, 439)
		else
			spawnedVeh6 = CreateVehicle(vehiclehash, 1864.84, 3658.774, 34.59, 31.93, 0)
			SetVehicleDirtLevel(spawnedVeh6, 0.1)
			TaskVehicleDriveWander(SheriffPatrol7, spawnedVeh6, 15.0, 439)
		end
	end	