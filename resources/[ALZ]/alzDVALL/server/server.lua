function alzNotif(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(false, false)
end

RegisterCommand(Config.commandName, function(source, args, rawCommand, user)
Wait(1)
TriggerClientEvent("wld:delallveh", -1) end, Config.restricCommand)


-- local delay = 1000 * 60 * 30 -- just edit this to your needed delay (30 minutes in this example)
-- Citizen.CreateThread(function()
--     for i = 1, 2 do 
--         Citizen.Wait(delay)
-- Wait(1)
-- TriggerClientEvent("wld:delallvehauto", -1)
--     end
-- end)
