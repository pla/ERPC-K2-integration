-- data-final-fixes.lua
-- FTL Science needs to be here if "Improved SpaceX FTL research reloaded" is installed, but doesn't hurt if not

if mods["SpaceMod"] and settings.startup["ERPC-K2-integration-integrate-spacex"].value
then
  data.raw.technology["orbital-ai-core"].prerequisites = {
    "ftl-propulsion",
    "space-station-assembly",
    "ftl-theory-A"
  }
  local all_science = {}
  if mods["space-exploration"] then
    all_science = util.table.deepcopy(data.raw.technology["se-lifesupport-equipment-1"].unit.ingredients)
  else
    all_science = util.table.deepcopy(data.raw.technology["kr-singularity-beacon"].unit.ingredients)
  end

  data.raw.technology["ftl-theory-A"].unit.ingredients = all_science

  all_science = util.table.deepcopy(data.raw.technology["rocket-silo"].unit.ingredients)

  data.raw.technology["ftl-propulsion"].unit.ingredients = all_science

  if settings.startup["SpaceX-no-space-sci"].value == false
  then
    table.insert(data.raw.technology["ftl-propulsion"].unit.ingredients, { "space-science-pack", 1 })
  end
end

if mods["SpaceMod"] and mods["improved-spacex-ftl"]
then
  -- Reinsert the new Science pack from improved-spacex-ftl
  table.insert(data.raw.technology["ftl-propulsion"].unit.ingredients, { "ftl-science-pack", 1 })
end

-- undo omni science changes for some ERPC techs
if mods["omnimatter_science"]
then
  data.raw.technology["extremely-advanced-rocket-payloads"].unit.count = 100
  data.raw.technology["vacuum-smelting"].unit.count = 1000
  data.raw.technology["space-mining-theory"].unit.count = 100
  data.raw.technology["space-station-assembly"].unit.count = 400
  data.raw.technology["orbital-ai-core"].unit.count = 2500
end
