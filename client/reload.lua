local config = require "config.client"

if config.manualReload then
    SetWeaponsNoAutoreload(true)
end