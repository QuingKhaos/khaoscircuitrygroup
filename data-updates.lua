local lib = require("__khaoscircuitrygroup__.prototypes.lib")

lib.update_subgroup("power-switch", "power-switch", "circuit-connection")
lib.update_subgroup("arithmetic-combinator", "arithmetic-combinator", "circuit-combinator-arithmetic")
lib.update_subgroup("decider-combinator", "decider-combinator", "circuit-combinator-decider")
lib.update_subgroup("selector-combinator", "selector-combinator", "circuit-combinator-selector")
lib.update_subgroup("constant-combinator", "constant-combinator", "circuit-combinator-constant")
lib.update_subgroup("display-panel", "display-panel", "circuit-visual")
lib.update_subgroup("lamp", "small-lamp", "circuit-visual-lamp")
lib.update_subgroup("programmable-speaker", "programmable-speaker", "circuit-auditory")

require("__khaoscircuitrygroup__.prototypes.compat.aai-signal-transmission-updates")
