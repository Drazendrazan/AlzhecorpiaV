RegisterServerEvent("alzIdentification:identify")
AddEventHandler("alzIdentification:identify", function(identity)
    local src = source
    TriggerClientEvent("alzIdentification:identify", -1, identity, GetEntityCoords(GetPlayerPed(src)))
end)

function SetIdentification(source, identity)
    if (source == -1) then return end
    TriggerEvent("alzIdentification:set", source, identity)
end

exports("SetIdentification", SetIdentification)