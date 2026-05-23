L2KGpsLocale = L2KGpsLocale or {}

L2KGpsLocale.en = {
    -- Mode hints (HUD banner). Overridable via Config.modeHint*Text for back-compat.
    ['mode.user']    = 'GPS MODE: USER',
    ['mode.mission'] = 'GPS MODE: MISSION',
    ['mode.off']     = 'GPS MODE: OFF',

    -- Route source names
    ['source.user']    = 'USER',
    ['source.mission'] = 'MISSION',
    ['source.manual']  = 'manual',
    ['source.blip']    = 'blip',

    -- Common terms
    ['common.unknown'] = 'unknown',
    ['common.none']    = 'none',

    -- Route activation notice (replaces previously hard-coded Portuguese "ROTA ATIVA")
    ['route.active']   = '^3Active route:^7 %s',

    -- Notifications (chat, success/info)
    ['notify.gps_enabled']            = '^2GPS 3D enabled.^7',
    ['notify.gps_disabled']           = '^1GPS 3D disabled.^7',
    ['notify.preset_selected']        = 'Preset %d selected: %s',
    ['notify.user_color_changed']     = 'USER color changed to rgba(%d, %d, %d, %d)',
    ['notify.mission_color_changed']  = 'MISSION color changed to rgba(%d, %d, %d, %d)',

    -- Errors (chat). Inner route errors are plain; wrappers keep ^1 on the prefix only.
    ['error.unknown']                 = 'unknown error',
    ['error.user_route_failed']       = '^1USER route failed:^7 %s',
    ['error.mission_route_failed']    = '^1MISSION route failed:^7 %s',
    ['error.invalid_route_source']    = 'Invalid route source.',
    ['error.manual_disabled']         = 'Manual route source is disabled.',
    ['error.manual_not_active']       = 'Manual waypoint route is not active.',
    ['error.mission_disabled']        = 'Mission route source is disabled.',
    ['error.mission_not_active']      = 'Mission blip route is not active.',
    ['error.invalid_preset']          = 'Invalid preset.',
    ['error.invalid_preset_index']    = '^1Invalid preset index.^7',
    ['error.invalid_blip']            = 'Invalid blip.',

    -- Status command output
    ['status.source']    = 'Source: ^3%s^7',
    ['status.preset']    = 'Preset: ^5%d - %s^7',
    ['status.points']    = 'Points: %d',
    ['status.slot']      = 'Slot: %s',
    ['status.available'] = 'Available: [%s]',

    -- Command usage hints
    ['usage.gps3d_route']      = '^3Usage:^7 /gps3d_route manual|blip|toggle|status',
    ['usage.gpspreset']        = '^3Usage:^7 /gpspreset index|next|prev|status',
    ['usage.gpscolordefault']  = '^3Usage:^7 /gpscolordefault r g b [a]. Current: rgba(%d, %d, %d, %d)',
    ['usage.gpscolormission']  = '^3Usage:^7 /gpscolormission r g b [a]. Current: rgba(%d, %d, %d, %d)',

    -- HUD overlays (drawWorldText)
    ['hud.gps_fx_on']     = 'GPS FX: ON',
    ['hud.gps_fx_off']    = 'GPS FX: OFF',
    ['hud.gps_color']     = 'GPS COLOR: %s',
    ['hud.gps_preset']    = 'GPS PRESET: %s',
    ['hud.gps_cooldown']  = 'GPS COOLDOWN: %ds',
}
