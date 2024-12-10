fx_version "cerulean"
game "gta5"
lua54 "yes"

name "ff_weapons"
author "FiveForge Studios"
version "1.0.0"
description "A weapons resource with a variety of features"

files {
    "locales/*.json",
    "config/shared.lua",
    "config/client.lua",
    "client/modes.lua"
}

shared_scripts {
    "@ox_lib/init.lua",
    "__types.lua",
    "config/shared.lua",
    "shared/utils.lua"
}

client_scripts {
    "config/client.lua",
    "client/main.lua"
}

server_scripts {
    "server/main.lua",
    "server/version.lua"
}

escrow_ignore {
    "config/*.lua",
    "bridge/**/*.lua",
    "installation/**/*.*",
    "locales/*.json",
    "client/cl-games.lua"
}

dependencies {
    "/server:7290",
    "/onesync",
    "ox_lib"
}

use_experimental_fxv2_oal "yes"