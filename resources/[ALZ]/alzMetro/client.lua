-- table containing all trains which are known
local trains = {}
local inTram = false

local currentNode = nil

-- list of stations and their node ids
-- you probably don't have to modify this except when you are renaming stations
local stations <const> = {
    { node = 179,  name = "Strawberry",      },
    { node = 271,  name = "Puerto Del Sol",  },
    { node = 388,  name = "LSIA Parking",    },
    { node = 434,  name = "LSIA Terminal 4", },
    { node = 530,  name = "LSIA Terminal 4", },
    { node = 578,  name = "LSIA Parking",    },
    { node = 689,  name = "Puerto Del Sol",  },
    { node = 782,  name = "Strawberry",      },
    { node = 1078, name = "Burton",          },
    { node = 1162, name = "Portola Drive",   },
    { node = 1233, name = "Del Perro",       },
    { node = 1331, name = "Little Seoul",    },
    { node = 1397, name = "Pillbox South",   },
    { node = 1522, name = "Davis",           },
    { node = 1649, name = "Davis",           },
    { node = 1791, name = "Pillbox South",   },
    { node = 1869, name = "Little Seoul",    },
    { node = 1977, name = "Del Perro",       },
    { node = 2066, name = "Portola Drive",   },
    { node = 2153, name = "Burton",          },
    { node = 2246, name = "Strawberry"       }
}

-- don't edit this, see readme for configuration
local defaultStationText <const> = "Vous êtes sur la ligne ~BLIP_536~. Prochain arrêt: ~g~~a~"

Citizen.CreateThread(function()
    SwitchTrainTrack(0, true)
    SwitchTrainTrack(3, true)

    SetTrainTrackSpawnFrequency(0, 120000)
    SetRandomTrains(1)
    SetTrainsForceDoorsOpen(false)
    local text = GetConvar("trams_station_text", defaultStationText)
    AddTextEntry("NEXT_STATION_NOTIFICATION", text)
end)

CreateThread(function()
    while true do
        Wait(1000)

        local player = PlayerPedId()
        local coords = GetEntityCoords(player)
        trains = GetTrams(coords)
        if #trains >= 1 then
            local train = trains[1][1]

            if train ~= nil then
                currentNode = GetTrainCurrentTrackNode(train)
            else
                currentNode = nil
            end
        end
        inTram = IsPedInAnyTrain(player)
    end
end)

CreateThread(function()
    while true do
        Wait(0)

        if inTram and currentNode ~= nil then
            local nextst = "HORS SERVICE"

            for _, station in ipairs(stations) do
                -- check if train current node is before next station
                if currentNode < station.node then
                    nextst = station.name

                    break
                end
            end

            BeginTextCommandDisplayHelp("NEXT_STATION_NOTIFICATION")
            AddTextComponentSubstringPlayerName(nextst)
            EndTextCommandDisplayHelp(0, 0, 1, -1)
        end
    end
end)

function compareCoords(a, b) return a[2] < b[2] end

function GetTrams(coords)
    local trams = {}

    local vehiclePool = GetGamePool("CVehicle");
    for k, vehicle in pairs(vehiclePool) do
        local distance = #(GetEntityCoords(vehicle) - coords)

        if distance <= 100 and GetEntityModel(vehicle) == `metrotrain` then
            table.insert(trams, {vehicle, distance, GetEntitySpeed(vehicle)})
        end
    end
    table.sort(trams, compareCoords)
    return trams
end