local lib = require("__khaoscircuitrygroup__.prototypes.lib")

if mods["aai-signal-transmission"] then
  local subgroup = settings.startup["khaoscircuitrygroup-aai-signal-transmission-circuit-subgroup"].value
  lib.update_subgroup("roboport", "aai-signal-sender", subgroup)
  lib.update_subgroup("roboport", "aai-signal-receiver", subgroup)
end
