local config = require "config.shared"

---@enum printColour
local printColour = {
    error = '^1[Error]^7',
    warn = '^3[Warning]^7',
    info = '^2[Info]^7',
    debug = '^6[Debug]^7',
}

---@param message string
---@param priority string
function Debug(message, priority)
    if not config.debug then return end
    priority = priority or printColour.info
    print(("^5[FiveForge Debug] ^7- %s %s"):format(printColour[priority], message))
end