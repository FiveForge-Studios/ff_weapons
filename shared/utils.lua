local config = require "config.shared"

---@param message string
---@param priority string
function Debug(message, priority)
    if not config.debug then return end
    priority = priority or PrintColour.info
    print(("^5[FiveForge Debug] ^7- %s %s"):format(PrintColour[priority], message))
end