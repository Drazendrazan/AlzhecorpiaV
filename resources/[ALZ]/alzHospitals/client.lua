function DisplayNotification(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end

function DisplayHelpText(text, state)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, state, 0, -1)
end

Citizen.CreateThread(function()
    for _, item in pairs(Config.Blips) do
        item.blip = AddBlipForCoord(item.x, item.y, item.z)
        SetBlipSprite(item.blip, item.id)
        SetBlipColour(item.blip, item.color)
        SetBlipAsShortRange(item.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(item.name)
        EndTextCommandSetBlipName(item.blip)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for _, item in pairs(Config.Blips) do
            if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), item.x, item.y, item.z, true) <= 20 then
                DrawMarker(23, item.x, item.y, item.z, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 0.5001, 248, 138, 138, 200)
                if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), item.x, item.y, item.z, true) <= 2 then
                    DisplayHelpText("Appuyez sur ~INPUT_VEH_HORN~ pour demander des soins.", 0)
                    if (IsControlJustPressed(1, 38)) then
                        if (GetEntityHealth(GetPlayerPed(-1)) < 200) then                          
                            SetEntityHealth(GetPlayerPed(-1), 200)
                            DisplayNotification("~g~Vous avez bénéficié de soins médicaux.")
                        else
                            DisplayNotification("~r~Vous n'avez pas besoin de soins médicaux.")
                        end
                    end
                end
            end
        end
    end
end)
