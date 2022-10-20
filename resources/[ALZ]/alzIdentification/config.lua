Config = {}
Config.Data = {}

Config.Data.DisplayTimer = 3
Config.Data.DisplayDistance = 4.0
Config.Data.Departments = { 
    ["lspd"] = {
        label = "Los Santos Police Department",
        background_image = "https://static.wikia.nocookie.net/gtawiki/images/2/21/Lossantos_seal.png",
        background_color = "rgb(38, 42, 78)",
        description = "<h3>Los Santos Police Department</h3><p>The person displaying this badge is a law enforcement officer.</p><p>Los Santos, CA</p>",
        colors= {
            text = "white",
            underline = "white",
            photo = "black",
        }
    },
    ["bcso"] = {
        label = "Blaine County Sheriff's Office",
        background_image = "https://static.wikia.nocookie.net/gtawiki/images/3/32/LSSD.png",
        background_color = "rgb(200, 78, 0)",
        description = "<h3>Blaine County Sheriff's Office</h3><p>The person displaying this badge is a law enforcement officer.</p><p>Los Santos, CA</p>",
        colors = {
            text = "white",
            underline = "white",
            photo = "white",
        }
    },
    ["medic"] = {
        label = "San Andreas Medical",
        background_image = "https://nremt.org/icon.png",
        background_color = "rgb(40, 40, 60)",
        description = "<h3>San Andreas Medical</h3><p>The person displaying this badge is a medical professional.</p><p>Los Santos, CA</p>",
        colors = {
            text = "white",
            underline = "white",
            photo = "white",
        }
    },
    ["staff"] = {
        label = "Washington D.C.",
        background_image = "https://i.imgur.com/JVSTMOr.png",
        background_color = "rgb(40, 40, 60)",
        description = "<h3>Secret Service</h3><p>La personne vous montrant ceci est un agent de Washington (U.S. Air Force, U.S. Navy, U.S. Marshall, U.S. Army ou encore Secret Service).</p><p>Washington D.C.</p>",
        colors = {
            text = "white",
            underline = "white",
            photo = "white",
        }
    },
    ["unknown"] = {
        label = "Service inconnu",
        background_image = "",
        background_color = "rgb(40, 40, 60)",
        description = "<h3>Service inconnu</h3><p>La plaque de cet individu vous semble fausse.</p><p>Los Santos, CA</p>",
        colors = {
            text = "white",
            underline = "white",
            photo = "white",
        }
    },
}
Config.Functions = {}

Config.Functions.CanDisplayIdentity = function()
    return true
end

Config.Functions.CanEditIdentity = function()
    return true
end

Config.Functions.OnEditSubmit = function(data)
    return data
end