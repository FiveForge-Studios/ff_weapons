return {
    manualReload = true, -- Controls requiring the player to manually reload their weapon with `INPUT_RELOAD`
    limiter = { -- Controls only firing the weapon once per trigger pull
        enabled = true,
        secondCount = 3, -- How many seconds with trigger held down until you show prompt
        ammoTypes = { `AMMO_PISTOL`, `AMMO_SHOTGUN`, `AMMO_SNIPER` },
        whitelisted = { `weapon_raypistol` } -- Which weapons can still spam fire
    }
}