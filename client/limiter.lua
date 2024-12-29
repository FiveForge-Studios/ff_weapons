local config = require "config.client"
if not config.limiter.enabled then return end

local limiter = {}
local showingPrompt = false

--- Triggers whenever a weapon is fired
---@param weapon integer The hash of the weapon fired
function limiter.gunshot(weapon)
    if GetWeaponDamageType(weapon) ~= 3 then return end
    if not table.contains(config.limiter.ammoTypes, GetPedAmmoTypeFromWeapon(cache.ped, weapon)) then return end
    if table.contains(config.limiter.whitelisted, weapon) then return end
    
    CreateThread(function()
        local initialShot = GetGameTimer()
        while IsControlPressed(0, 24) or IsDisabledControlPressed(0, 24) do
            Debug("Holding down trigger on limiter", DebugTypes.Debug)
            DisablePlayerFiring(PlayerId(), true)
            
            local timeDiff = GetGameTimer() - initialShot
            if timeDiff >= 2000 and not showingPrompt then
                showingPrompt = true
                lib.notify({
                    description = "Release the trigger to fire your weapon again.",
                    duration = 5000,
                    position = "top-right",
                    type = "error",
                    icon = "gun"
                })
            end

            Wait(0)
        end

        showingPrompt = false
        Debug("Stopped holding trigger on limiter", DebugTypes.Debug)
    end)
end

return limiter