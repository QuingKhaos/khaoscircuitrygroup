local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

--- @class KhaosCircuitryGroup.lib
local lib = {}

--- @param entity_type string
--- @param name string
--- @param subgroup data.ItemSubGroupID
function lib.update_subgroup(entity_type, name, subgroup)
  if not settings.startup["khaoscircuitrygroup-individual-combinator-subgroups"].value then
    subgroup = subgroup:gsub("%-arithmetic", ""):gsub("%-decider", ""):gsub("%-selector", ""):gsub("%-constant", ""):gsub("%-lamp", "")
  end

  khaoslib_entity:load(entity_type, name):set {subgroup = subgroup} :commit()
  khaoslib_item:load(name):set {subgroup = subgroup} :commit()
  khaoslib_recipe:load(name):set {subgroup = subgroup} :commit()

  if mods["quality"] then
    if khaoslib_recipe.exists(name .. "-recycling") then
      khaoslib_recipe:load(name .. "-recycling"):set {subgroup = subgroup} :commit()
    end
  end
end

return lib
