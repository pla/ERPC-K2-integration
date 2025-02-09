-- data-final-fixes.lua
-- FTL Science needs to be here if "Improved SpaceX FTL research reloaded" is installed, but doesn't hurt if not

if (mods["SpaceMod"] or mods["SpaceModFeorasFork"]) and settings.startup["ERPC-K2-integration-integrate-spacex"].value
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
  data.raw.technology["ftl-theory-B"].unit.ingredients = all_science
  data.raw.technology["ftl-theory-C"].unit.ingredients = all_science
  data.raw.technology["ftl-theory-D1"].unit.ingredients = all_science
  data.raw.technology["ftl-theory-D2"].unit.ingredients = all_science
  data.raw.technology["ftl-propulsion"].unit.ingredients = all_science

  if mods["SpaceModFeorasFork"] then
    data.raw.technology["laser-cannon"].unit.ingredients = all_science
    data.raw.technology["space-ai-robots"].unit.ingredients = all_science
    data.raw.technology["space-fluid-tanks"].unit.ingredients = all_science
    data.raw.technology["exploration-satellite"].unit.ingredients = all_science
    data.raw.technology["space-cartography"].unit.ingredients = all_science

    table.insert(data.raw.technology["orbital-ai-core"].prerequisites,"space-cartography")
  end
end
