-- l2k_gps3d main configuration (3D GPS ribbon).
-- Edit L2KGpsConfig below to customize routing, presets, colors, and shortcuts
-- without editing client.lua. Loaded first via shared_scripts in fxmanifest.lua.
-- Geo-animation settings live in gpsgeoanim.config.lua (L2KGpsGeoAnimConfig); that
-- file is independent and does not share keys with this table.

L2KGpsConfig = {
    -- General
    -- Locale (used by locale.lua / L() helper). Available: 'en' (default).
    locale = 'ja',
    enabled = true,
    drawWhenOnFoot = false,
    ignoredVehicleClasses = {
        [14] = true, -- boats
        [16] = true, -- planes
    },

    -- Route sources
    routeSource = 'manual',
    routeSources = {
        manual = true,
        blip = true,
        multi = false, -- intentionally ignored
    },
    enableExternalBlipRouteCapture = true,
    externalBlipRouteScanIntervalMs = 1000,
    routeSwitchKeysEnabled = true,
    shortcutRouteToggleEnabled = true,
    shortcutColorCycleEnabled = true,
    shortcutPresetCycleEnabled = true,
    shortcutGpsToggleEnabled = true,
    shortcutAnimationToggleEnabled = true,
    shortcutModifierKey = 21, -- SHIFT
    routeSwitchKeyUp = 188,
    routeColorKey = 246, -- Y
    routePresetKeyLeft = 189,
    routePresetKeyRight = 190,
    routeToggleKey = 187, -- DOWN
    routeAnimationToggleKey = 303, -- U
    routeToggleCooldownMs = 10000,

    -- Route sampling
    lowSpeedSampleStep = 6.0,
    mediumSpeedSampleStep = 7.5,
    highSpeedSampleStep = 9.0,
    lowSpeedRouteDistance = 90.0,
    mediumSpeedRouteDistance = 150.0,
    highSpeedRouteDistance = 200.0,
    mediumSpeedKmh = 100.0,
    highSpeedKmh = 200.0,

    -- Junction smoothing
    ignoreJunctionNodes = false,
    smoothJunctionTransitions = true,
    junctionPaddingPoints = 1,
    junctionCurveStrength = 0.22,
    junctionCurveMaxHandle = 6.2,

    -- Route placement
    routeHeight = 0.22,

    -- Periodic update by velocity
    lowSpeedUpdateMs = 2500,
    mediumSpeedUpdateMs = 1500,
    highSpeedUpdateMs = 500,
    periodicRebuildEnabled = true,

    -- Route extend
    routeExtendNearEndEnabled = true,
    routeExtendNearEndPoints = 30,
    routeExtendNearEndDistance = 130.0,
    routeExtendMaxJoinDistance = 10.0,
    routeExtendCooldownMs = 700,

    -- Route trim
    routeTrimBehindEnabled = true,
    routeTrimKeepBehindPoints = 18,
    routeTrimMinHeadDistance = 100.0,

    -- Draw culling
    markerDrawAheadOnly = true,
    markerBehindCullBuffer = -2.5,

    -- Off-route rebuild
    offRouteRebuildEnabled = true,
    offRouteRebuildDistance = 14.0,
    offRouteRebuildConfirmMs = 500,
    offRouteRebuildCooldownMs = 1400,
    offRouteRebuildMinSpeedKmh = 100.0,

    -- Ground / Z
    routeGroundProbeEnabled = true,
    routeGroundProbeZ = 1000.0,
    routeGroundOffset = 0.0,
    routeGroundMaxDelta = 2.5,
    routeHeightAssistEnabled = false,
    routeHeightAssistBlend = 0.45,
    routeHeightAssistMaxDelta = 3.0,
    groundProbeCacheEnabled = true,
    groundProbeCacheCell = 1.0,
    groundProbeCacheTtlMs = 1200,
    groundProbeCacheMaxEntries = 1500,

    -- Ribbon
    texturedRoute = {
        width = 1.35,
        lift = 0.03,
        repeatDistance = 4.0,
        maxMiterScale = 1.35,
        nearFadeEnabled = true,
        nearFadeDistance = 12.0,
        nearFadeStartAlpha = 0.0,
    },

    -- Presets
    currentRoutePreset = 0,
    routePresets = {
        [0] = {
            name = 'Classic Chevron',
            textureDict = 'chevrons',
            textureName = 'chevrons',
        },
        [1] = {
            name = 'chevron_line_06',
            textureDict = 'chevrons',
            textureName = 'chevron_line_06',
        },
        [2] = {
            name = 'chevron_fire_01',
            textureDict = 'chevrons',
            textureName = 'chevron_fire_01',
        },
        [3] = {
            name = 'chevron_ice_01',
            textureDict = 'chevrons',
            textureName = 'chevron_ice_01',
        },
        [4] = {
            name = 'chevron_neon_01',
            textureDict = 'chevrons',
            textureName = 'chevron_neon_01',
        },
        [5] = {
            name = 'chevron_line_05',
            textureDict = 'chevrons',
            textureName = 'chevron_line_05',
        },
        [6] = {
            name = 'chevron_line_07',
            textureDict = 'chevrons',
            textureName = 'chevron_line_07',
        },
        [7] = {
            name = 'chevron_line_01',
            textureDict = 'chevrons',
            textureName = 'chevron_line_01',
        },
        [8] = {
            name = 'chevron_line_02',
            textureDict = 'chevrons',
            textureName = 'chevron_line_02',
        },
        [9] = {
            name = 'chevron_line_08',
            textureDict = 'chevrons',
            textureName = 'chevron_line_08',
        },
        [10] = {
            name = 'chevron_line_04',
            textureDict = 'chevrons',
            textureName = 'chevron_line_04',
        },
        [11] = {
            name = 'chevron_line_03',
            textureDict = 'chevrons',
            textureName = 'chevron_line_03',
        },
    },
    routeColorPalette = {
        { name = 'Hot Red', color = { r = 255, g = 0, b = 0, a = 205 } },
        { name = 'Crimson', color = { r = 220, g = 20, b = 60, a = 205 } },
        { name = 'Orange Red', color = { r = 255, g = 69, b = 0, a = 205 } },
        { name = 'Amber', color = { r = 255, g = 140, b = 0, a = 205 } },
        { name = 'Gold', color = { r = 255, g = 184, b = 28, a = 205 } },
        { name = 'Sun Yellow', color = { r = 255, g = 214, b = 64, a = 205 } },
        { name = 'Rose Pink', color = { r = 255, g = 92, b = 138, a = 205 } },
        { name = 'Magenta', color = { r = 255, g = 0, b = 140, a = 205 } },
        { name = 'Ice Blue', color = { r = 100, g = 210, b = 255, a = 205 } },
        { name = 'White', color = { r = 255, g = 255, b = 255, a = 205 } },
    },

    -- Mode switch feedback
    modeFxEnabled = true,
    modeFxName = 'SwitchHUDOut',
    modeFxDurationMs = 300,
    modeFxSoundName = '5_SEC_WARNING',
    modeFxSoundSet = 'HUD_MINI_GAME_SOUNDSET',
    noRouteSoundName = 'ERROR',
    noRouteSoundSet = 'HUD_FRONTEND_DEFAULT_SOUNDSET',

    -- Extra animations
    extraAnimationsEnabled = true,
    animationOnEnabled = true,
    animationOffEnabled = true,
    geoAnimIntroProfile = 'on',
    geoAnimQuickOnProfile = 'on_fast',
    geoAnimOffProfile = 'off',

    -- 3D mode banner
    modeHintEnabled = true,
    modeHintDurationMs = 1800,
    modeHintUserText = 'GPS MODE: USER',
    modeHintMissionText = 'GPS MODE: MISSION',
    modeHintOffText = 'GPS MODE: OFF',
    modeHintAnchorOffsetZ = 1.1,
    modeHintTextOffsetZ = 2.0,
    modeHintLineColor = { r = 255, g = 255, b = 255, a = 165 },
}
