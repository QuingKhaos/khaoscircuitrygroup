local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_item_group = require("__khaoslib__.prototypes.item-group")
local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")

-- Emulate as if Schall Circuit Group is installed
mods["SchallCircuitGroup"] = "2.0.1"
settings.startup["Schall-CGP-individual-combinator-subgroups"] = {
  value = settings.startup["khaoscircuitrygroup-individual-combinator-subgroups"].value
}

khaoslib_item_group:load {
  type = "item-group",
  name = "circuitry",
  order = "ac[circuitry]",
} :set_icons {{icon = "__base__/graphics/technology/circuit-network.png", icon_size = 256}}
  :commit()

khaoslib_item_subgroup:load("circuit-network"):set {group = "circuitry", order = "a[circuit-network]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "circuit-connection", group = "circuitry", order = "b[circuit-connection]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "circuit-combinator", group = "circuitry", order = "c[circuit-combinator]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "circuit-combinator-arithmetic", group = "circuitry", order = "c[circuit-combinator]-a[arithmetic]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "circuit-combinator-decider", group = "circuitry", order = "c[circuit-combinator]-b[decider]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "circuit-combinator-selector", group = "circuitry", order = "c[circuit-combinator]-c[selector]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "circuit-combinator-constant", group = "circuitry", order = "c[circuit-combinator]-d[constant]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "circuit-input", group = "circuitry", order = "d[circuit-input]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "circuit-visual", group = "circuitry", order = "e[circuit-visual]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "circuit-visual-lamp", group = "circuitry", order = "e[circuit-visual]-a[lamp]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "circuit-auditory", group = "circuitry", order = "f[circuit-auditory]"} :commit()

--- @param type string
--- @param name string
--- @param subgroup data.ItemSubGroupID
local function update_subgroup(type, name, subgroup)
  if not settings.startup["khaoscircuitrygroup-individual-combinator-subgroups"].value then
    subgroup = subgroup:gsub("%-arithmetic", ""):gsub("%-decider", ""):gsub("%-selector", ""):gsub("%-constant", ""):gsub("%-lamp", "")
  end

  khaoslib_entity:load(type, name):set {subgroup = subgroup} :commit()
  khaoslib_item:load(name):set {subgroup = subgroup} :commit()
  khaoslib_recipe:load(name):set {subgroup = subgroup} :commit()
end

update_subgroup("power-switch", "power-switch", "circuit-connection")
update_subgroup("arithmetic-combinator", "arithmetic-combinator", "circuit-combinator-arithmetic")
update_subgroup("decider-combinator", "decider-combinator", "circuit-combinator-decider")
update_subgroup("selector-combinator", "selector-combinator", "circuit-combinator-selector")
update_subgroup("constant-combinator", "constant-combinator", "circuit-combinator-constant")
update_subgroup("display-panel", "display-panel", "circuit-visual")
update_subgroup("lamp", "small-lamp", "circuit-visual-lamp")
update_subgroup("programmable-speaker", "programmable-speaker", "circuit-auditory")
