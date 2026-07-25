local khaoslib_setting = require("__khaoslib__.settings.setting")

-- Emulate as if Schall Circuit Group is installed
mods["SchallCircuitGroup"] = "2.0.1"

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoscircuitrygroup-individual-combinator-subgroups",
  setting_type = "startup",
  default_value = false,
  order = "b[settings]-a[individual-combinator-subgroups]",
} :commit()

require("__khaoscircuitrygroup__.settings.compat.aai-signal-transmission")
