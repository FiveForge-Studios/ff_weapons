local currentWeapon = nil
local currentState = FiringModes.Automatic
local safetyToggled = false
local weaponModes = {}

local modes = {}

function modes.gunshot()
    Debug(("[Gunshot] - %s"):format("Firing Modes"), DebugTypes.Info)
end

return modes