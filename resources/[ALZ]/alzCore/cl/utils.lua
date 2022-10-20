-- Menu PAUSE
function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
        N_0xb9449845f73f5e9c("SHIFT_CORONA_DESC")
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunction()
        N_0xb9449845f73f5e9c("SET_HEADER_TITLE")
        PushScaleformMovieFunctionParameterString("~g~Alzhecorpia~w~V")
        PushScaleformMovieFunctionParameterBool(true)
        PushScaleformMovieFunctionParameterString("~d~Un serveur FreeRoam privé, pour déconner entre potes.")
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunctionVoid()
    end
end)
Citizen.CreateThread(function()
    AddTextEntry('PM_SCR_MAP', "~g~Carte de Los Santos")
    AddTextEntry('PM_SCR_STA', "~g~Statistiques")
    AddTextEntry('PM_SCR_GAM', "~g~Prendre l'avion")
    AddTextEntry('PM_SCR_INF', "~g~Historique")
    AddTextEntry('PM_SCR_SET', "~g~Tableau de bord")
    AddTextEntry('PM_SCR_RPL', "~g~Éditeur Rockstar")
    AddTextEntry("PM_PANE_LEAVE", "🛫 ~r~S'envoler dans une autre ville")
    AddTextEntry("PM_PANE_QUIT", "🚪 ~r~Quitter FiveM")
end)

-- PVP
AddEventHandler("playerSpawned", function()
    NetworkSetFriendlyFireOption(true)
    SetCanAttackFriendly(PlayerPedId(), true, true)
end)

-- Mission Row Police Department
Citizen.CreateThread(function()
	LoadInterior(GetInteriorAtCoords(440.84, -983.14, 30.69))
end)

-- Anti Carkill
Citizen.CreateThread(function()
    while true do
        N_0x4757f00bc6323cfe(-1553120962, 0.0) 
        Wait(0)
    end
end)

-- Bordures San Andreas
local flag = false

function ShowNotification( text )
        SetNotificationTextEntry("STRING")
        AddTextComponentSubstringPlayerName(text)
        DrawNotification(false, false)
end

RegisterCommand("borders", function(source, args, RawCommand)
        if args[1] == 'on' then
                 flag = true
        else if args[1] == 'off' then
                 flag = false
else
                ShowNotification("~g~~b~Wrong usage! Try this: /borders [on/off]")
        end
end
end)

Citizen.CreateThread(function()
        while true do
                Wait(500)
                while flag == true do
                        Wait(0)
        DrawMarker(43, -7999.94, 500.0, 0.0, -3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 17000.0, 0.2, 2699.75, 255, 255, 255, 20, false, false, 2, false, false, false, false)
        DrawMarker(43, 7999.96, 500.0, 0.0, 3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 17000.0, 0.2, 2699.75, 255, 255, 255, 20, false, false, 2, false, false, false, false)
        DrawMarker(43, 0.0, 8999.92, 3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 16000.0, 0.2, 2699.75, 255, 255, 255, 20, false, false, 2, false, false, false, false)
        DrawMarker(43, 0.0, -7999.98, -3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 16000.0, 0.2, 2699.75, 255, 255, 255, 20, false, false, 2, false, false, false, false)
                        end
                    end
end)

function StartDrawId()
    Citizen.CreateThread(function()
        while havetodraw do
            koords = GetEntityCoords(PlayerPedId())
            dist = GetDistanceBetweenCoords(koords, coordsplayer, true)
            if dist <= 15 then
                Draw3DTextId(coordsplayer.x, coordsplayer.y, coordsplayer.z + 1.23, '[ID: ' ..playersource.. ']')
            end
            Citizen.Wait(0)
        end
    end)
end

function Draw3DTextId(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 159)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
            local ped = PlayerPedId()
            local wep = GetSelectedPedWeapon(ped)
            SetPedDropsWeaponsWhenDead(ped, true)
            RequestAnimDict("mp_weapon_drop")
            if DoesEntityExist(ped) and not IsEntityDead(ped) and not IsPedInAnyVehicle(ped, true) and not IsPauseMenuActive() and IsPedArmed(ped, 7) and IsControlJustPressed(1, 56) then -- INPUT_DROP_WEAPON (F9)
            TaskPlayAnim(ped, "mp_weapon_drop", "drop_bh", 8.0, 2.0, -1, 0, 2.0, 0, 0, 0 )
            SetPedDropsInventoryWeapon(ped, wep, 0, 2.0, 0, -1)
            SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
            ShowNotification("~r~Vous lâchez votre arme.")
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
                if IsPedArmed(ped, 6) then
            DisableControlAction(1, 140, true)
                DisableControlAction(1, 141, true)
                DisableControlAction(1, 142, true)
        end
    end
end)

CreateThread(function()
  StartAudioScene("CHARACTER_CHANGE_IN_SKY_SCENE");
  SetAudioFlag("PoliceScannerDisabled",true);
end)

Citizen.CreateThread(function()
   while true do
   Citizen.Wait(0)
   DisableControlAction(1, 140, true)
   if not IsPlayerTargettingAnything(PlayerId()) then
   DisableControlAction(1, 141, true)
   DisableControlAction(1, 142, true)
   end
  end
end)

RegisterCommand('faggio', function(source, args, rawCommand)
    local player = PlayerPedId();
    local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(player, 0.0, 8.0, 0.5));
    local vehiclehash = GetHashKey("faggio");
    local propHash = "h4_prop_h4_box_delivery_01a";

    RequestModel(vehiclehash)
    Citizen.CreateThread(function() 
        local waiting = 0
        while not HasModelLoaded(vehiclehash) do
            waiting = waiting + 100
            Citizen.Wait(100)
            if waiting > 3000 then
                print("Véhicule non trouvé.")
                break
            end
        end

        local vehicule = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(player)+90, 1, 0)
        local prop = CreateObject(GetHashKey(propHash), x, y, z, true, true, true)

        SetVehicleNumberPlateText(vehicule, "PizaThis")
        SetPedIntoVehicle(player, vehicule, -1)
        AttachEntityToEntity(prop, vehicule,  21, 0.0, 0.4, -0.2, 0, 0, -89.9999924, false, false, false, false, 2, true)
    end)
end)


-- PARACHUTE
Citizen.CreateThread(function()
    while true do Citizen.Wait(1)
       local playerPed = GetPlayerPed(-1)
        if IsPedInAnyHeli(playerPed) or IsPedInAnyPlane(playerPed) then
            GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("GADGET_PARACHUTE"), true)
        end
    end
end)

RegisterCommand('discord', function()
ShowNotification("~w~Discord : ~g~https://dsc.gg/gtalzhe")
end, false)

