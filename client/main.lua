lib.locale()

local config = require "config.client"
local modes = require "client.modes"

local weaponFired = false

print("config", json.encode(config, { indent = true }))

AddEventHandler("CEventGunShot", function(entities, shooter, args)
    if not IsPedAPlayer(shooter) then return end
    if weaponFired then return end
    
    Debug("Weapon Fired", DebugTypes.Info)
    weaponFired = true
    SetTimeout(50, function()
        if weaponFired then weaponFired = false end
    end)

    modes.gunshot()
    
    TriggerEvent("ff_weapons:client:weaponFired", GetSelectedPedWeapon(cache.ped))
end)