if mods["Kux-OrbitalIonCannon"] and settings.startup["ERPC-K2-integration-integrate-ioncannon"].value
then
  local recipe = data.raw.recipe
  local technology = data.raw.technology

  local all_science = {}
  if mods["space-exploration"] then
    all_science = util.table.deepcopy(technology["se-lifesupport-equipment-1"].unit.ingredients)
  else
    all_science = util.table.deepcopy(technology["kr-singularity-beacon"].unit.ingredients)
  end

  if recipe["orbital-ion-cannon"] then
    -- Adjust Recipe  orbital-ion-cannon
    recipe["orbital-ion-cannon"].ingredients = {
      { type = "item", name = "satellite-battery",         amount = 30 },
      { type = "item", name = "satellite-bus",             amount = 30 },
      { type = "item", name = "satellite-communications",  amount = 20 },
      { type = "item", name = "satellite-flight-computer", amount = 5 },
      { type = "item", name = "satellite-radar",           amount = 30 },
      { type = "item", name = "satellite-solar-array",     amount = 30 },
      { type = "item", name = "kr-ai-core",                   amount = 100 },
      { type = "item", name = "kr-imersium-plate",            amount = 200 },
      { type = "item", name = "kr-laser-artillery-turret", amount = 10 }
    }
  end
  if recipe["orbital-ion-cannon"].ingredients then
    recipe["orbital-ion-cannon"].ingredients = {
      { type = "item", name = "satellite-battery",         amount = 30 },
      { type = "item", name = "satellite-bus",             amount = 30 },
      { type = "item", name = "satellite-communications",  amount = 20 },
      { type = "item", name = "satellite-flight-computer", amount = 5 },
      { type = "item", name = "satellite-radar",           amount = 30 },
      { type = "item", name = "satellite-solar-array",     amount = 30 },
      { type = "item", name = "kr-ai-core",                   amount = 100 },
      { type = "item", name = "kr-imersium-plate",            amount = 200 },
      { type = "item", name = "kr-laser-artillery-turret", amount = 10 }
    }
  end
  -- Adjust Techtree
  technology["orbital-ion-cannon"].prerequisites = {
    "robot-global-positioning-system-1"
  }

  -- Adjust Science to K2 cards
  technology["orbital-ion-cannon"].unit.ingredients = all_science
  technology["orbital-ion-cannon"].unit.count = 20000
  technology["auto-targeting"].unit.ingredients = all_science
  technology["auto-targeting"].unit.count = 25000
end
