Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        Citizen.Wait(5*1000)
        SetDiscordAppId(784972652561170443)
        SetRichPresence("Make Roleplay Great Again")
        SetDiscordRichPresenceAsset("adama")
        SetDiscordRichPresenceAssetText("Un serveur Freeroam ou RP ? On sait pas trop !")
		SetDiscordRichPresenceAction(0, "⭐ Rejoindre", "https://cfx.re/join/pqbkya")
    end
end)