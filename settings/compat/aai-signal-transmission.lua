local khaoslib_setting = require("__khaoslib__.settings.setting")
local settings_constants = require("__khaoscircuitrygroup__.settings.settings-constants")

if mods["aai-signal-transmission"] then
  khaoslib_setting:load {
    type = "string-setting",
    name = "khaoscircuitrygroup-aai-signal-transmission-circuit-subgroup",
    setting_type = "startup",
    default_value = "circuit-connection",
    allowed_values = settings_constants.circuit_subgroups,
    order = "a[advanced]-a[aai-signal-transmission]-b[circuit-subgroup]",
    hidden = not mods["khaos-advanced-settings"]
  } :commit()
end
