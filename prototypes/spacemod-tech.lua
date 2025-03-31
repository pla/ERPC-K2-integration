-- adjust tech tree

if (mods["SpaceModFeorasFork"]) and
    settings.startup["ERPC-K2-integration-integrate-spacex"].value then
  local technology = data.raw.technology

  local all_science = {}
  if mods["space-exploration"] then
    all_science = util.table.deepcopy(technology["se-lifesupport-equipment-1"].unit.ingredients)
  else
    all_science = util.table.deepcopy(technology["kr-singularity-beacon"].unit.ingredients)
  end

  technology["fusion-reactor"].prerequisites = {
    "orbital-assembler-power-problem",
    "space-construction"
  }

  technology["orbital-autonomous-fabricators"].prerequisites = {
    "space-station-assembly",
    "orbital-assembler-power-problem",
    "vacuum-smelting"
  }
  technology["space-assembly"].prerequisites = {
    "space-assembler-theory"
  }
  technology["space-station-assembly"].prerequisites = {
    "astrometrics",
    "fuel-cells",
    "fusion-reactor",
    "habitation",
    "life-support-systems",
    "protection-fields",
    "space-casings",
    "space-thrusters",
    "spaceship-command"
  }
  technology["spy-shuttle"].prerequisites = {
    "space-shuttle",
    "space-telescope"
  }

  -- Adjust science to K2 cards
  technology["space-assembly"].unit.ingredients = all_science
  technology["space-casings"].unit.ingredients = all_science
  technology["space-telescope"].unit.ingredients = all_science
  technology["space-construction"].unit.ingredients = all_science
  technology["protection-fields"].unit.ingredients = all_science
  technology["fusion-reactor"].unit.ingredients = all_science
  technology["space-thrusters"].unit.ingredients = all_science
  technology["fuel-cells"].unit.ingredients = all_science
  technology["habitation"].unit.ingredients = all_science
  technology["life-support-systems"].unit.ingredients = all_science
  technology["astrometrics"].unit.ingredients = all_science
  technology["spaceship-command"].unit.ingredients = all_science


  technology["orbital-ai-core"].prerequisites = {
    "ftl-propulsion",
    "orbital-autonomous-fabricators",
    "ftl-theory-A",
    "space-cartography"
  }

  technology["ftl-theory-A"].unit.ingredients = all_science
  technology["ftl-theory-B"].unit.ingredients = all_science
  technology["ftl-theory-C"].unit.ingredients = all_science
  technology["ftl-theory-D1"].unit.ingredients = all_science
  technology["ftl-theory-D2"].unit.ingredients = all_science
  technology["ftl-propulsion"].unit.ingredients = all_science

  technology["laser-cannon"].unit.ingredients = all_science
  technology["space-ai-robots"].unit.ingredients = all_science
  technology["space-fluid-tanks"].unit.ingredients = all_science
  technology["exploration-satellite"].unit.ingredients = all_science
  technology["space-cartography"].unit.ingredients = all_science
end
