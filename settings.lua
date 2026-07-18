local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoscircuitrygroup-individual-combinator-subgroups",
  setting_type = "startup",
  default_value = false,
} :commit()
