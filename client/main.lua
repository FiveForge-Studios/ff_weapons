lib.locale()

local config = require "config.client"

print("config", json.encode(config, { indent = true }))