--[[
    l2k_gps3d locale helper
    -----------------------
    Resolves user-facing strings via L(key, ...).
    Falls back to English if the active locale is missing the key.
    Falls back to the key itself if even English is missing it.

    Active locale is read from L2KGpsConfig.locale (default 'en').
]]

local function getActiveLocale()
    local locale = (L2KGpsConfig and L2KGpsConfig.locale) or 'en'
    if not L2KGpsLocale or not L2KGpsLocale[locale] then
        return 'en'
    end
    return locale
end

function L(key, ...)
    local activeLocale = getActiveLocale()
    local localeTable = (L2KGpsLocale and L2KGpsLocale[activeLocale]) or {}
    local value = localeTable[key]

    if value == nil then
        local enTable = (L2KGpsLocale and L2KGpsLocale.en) or {}
        value = enTable[key]
    end

    if value == nil then
        return key
    end

    if select('#', ...) > 0 then
        return string.format(value, ...)
    end
    return value
end
