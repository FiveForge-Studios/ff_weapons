---@enum DebugTypes
DebugTypes = {
    Error = '^1[Error]^7',
    Warn = '^3[Warning]^7',
    Info = '^2[Info]^7',
    Debug = '^6[Debug]^7',
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