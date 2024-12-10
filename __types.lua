---@enum PrintColour
PrintColour = {
    error = '^1[Error]^7',
    warn = '^3[Warning]^7',
    info = '^2[Info]^7',
    debug = '^6[Debug]^7',
}

---@enum FiringModes
FiringModes = {
    Automatic = 0,
    Burst = 1,
    Single = 2
}

---@class WeaponMode
---@field hash integer
---@field mode FiringModes
---@field safety boolean