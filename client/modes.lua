local currentWeapon = nil
local currentState = FiringModes.Automatic
local safetyToggled = false
local weaponModes = {}

local modes = {}

--- Checks if data for the weapons modes exists in storage
---@return boolean
function modes.exists()
    return weaponModes[currentWeapon] ~= nil
end

--- Triggers whenever a weapon is fired
---@param weapon integer The hash of the weapon fired
function modes.gunshot(weapon)
    Debug(("[Gunshot] - %s | Weapon: %s"):format("Firing Modes", weapon), DebugTypes.Info)

    currentWeapon = weapon -- Update weapon in local storage
end

return modes