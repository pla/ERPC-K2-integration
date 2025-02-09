-- data-updates.lua

local recipe = data.raw.recipe
local technology = data.raw.technology

local refurbish_chance = settings.startup["ERPC-K2-integration-refurbish-chance"].value

local all_science = {}
if mods["space-exploration"] then
  all_science = util.table.deepcopy(technology["se-lifesupport-equipment-1"].unit.ingredients)
else
  all_science = util.table.deepcopy(technology["kr-singularity-beacon"].unit.ingredients)
end
local stone = "stone-brick"

if settings.startup["ERPC-K2-integration-use-k2-tiles"].value
then
  stone = "kr-black-reinforced-plate"
end

recipe["advanced-assembler"].ingredients = {
  { type = "item", name = "kr-advanced-assembling-machine", amount = 20 },
  { type = "item", name = "processing-unit",             amount = 200 },
  { type = "item", name = "concrete",                    amount = 400 },
  { type = "item", name = "electronic-components",       amount = 200 },
  { type = "item", name = "kr-superior-inserter",        amount = 10 },
  { type = "item", name = "imersium-plate",              amount = 400 }
}

recipe["autonomous-space-mining-drone"].ingredients = {
  { type = "item", name = "kr-advanced-assembling-machine",     amount = 100 },
  { type = "item", name = "kr-electric-mining-drill-mk3",       amount = 500 },
  { type = "item", name = "rocket-fuel",                        amount = 200 },
  { type = "item", name = "radioisotope-thermoelectric-generator", amount = 20 },
  { type = "item", name = "satellite-bus",                      amount = 20 },
  { type = "item", name = "satellite-communications",           amount = 1 },
  { type = "item", name = "satellite-flight-computer",          amount = 20 },
  { type = "item", name = "satellite-radar",                    amount = 10 },
  { type = "item", name = "satellite-thruster",                 amount = 10 },
  { type = "item", name = "kr-superior-long-inserter",   amount = 100 }
}

recipe["ground-auto-fabricator"].ingredients = {
  { type = "item", name = "ground-fabricator-component", amount = 10 }
}

recipe["ground-telescope"].ingredients = {
  { type = "item", name = "concrete",           amount = 1000 },
  { type = "item", name = "electric-engine-unit", amount = 1000 },
  { type = "item", name = "electronic-components", amount = 1000 },
  { type = "item", name = "processing-unit",    amount = 500 },
  { type = "item", name = "telescope-components", amount = 1 },
  { type = "item", name = "imersium-plate",     amount = 2000 },
  { type = "item", name = "kr-steel-pipe",      amount = 1000 }
}

recipe["orbital-fabricator-component"].ingredients = {
  { type = "item", name = "kr-advanced-assembling-machine", amount = 100 },
  { type = "item", name = "kr-advanced-chemical-plant",   amount = 100 },
  { type = "item", name = "autonomous-space-mining-drone", amount = 10 },
  { type = "item", name = "centrifuge",                   amount = 250 },
  { type = "item", name = "kr-advanced-furnace",          amount = 500 },
  { type = "item", name = "oil-refinery",                 amount = 50 },
  { type = "item", name = "satellite-bus",                amount = 100 },
  { type = "item", name = "satellite-communications",     amount = 200 },
  { type = "item", name = "satellite-flight-computer",    amount = 50 },
  { type = "item", name = "kr-superior-long-inserter", amount = 500 }
}

recipe["radioisotope-thermoelectric-generator"].ingredients = {
  { type = "item", name = "substation",      amount = 500 },
  { type = "item", name = "processing-unit", amount = 100 },
  { type = "item", name = "imersium-plate",  amount = 100 },
  { type = "item", name = "uranium-fuel-cell", amount = 100 }
}


recipe["refurbish-fabricator-shuttle"].ingredients = {
  { type = "fluid", name = "water",                       amount = 20000 },
  { type = "item",  name = "landed-fabricator-shuttle",   amount = 1 },
  { type = "item",  name = "orbital-fabricator-component", amount = 1 },
  { type = "item",  name = "rocket-fuel",                 amount = 2000 },
  { type = "item",  name = stone,                         amount = 5000 }
}

recipe["refurbish-fabricator-shuttle"].results = {
  {
    type = "item",
    name = "fabricator-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or 1
  },
  { type = "item",  name = "ground-fabricator-component", amount = 1 },
  { type = "fluid", name = "dirty-water",                amount = 18000 }

}

recipe["refurbish-mining-shuttle"].ingredients = {
  { type = "fluid", name = "water",                amount = 20000 },
  { type = "item",  name = "landed-mining-shuttle", amount = 1 },
  { type = "item",  name = "rocket-fuel",          amount = 2000 },
  { type = "item",  name = stone,                  amount = 2000 }
}

recipe["refurbish-mining-shuttle"].results = {
  {
    type = "item",
    name = "mining-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or 1
  },
  { type = "item",  name = "iron-dropship",  amount = 7500 },
  { type = "item",  name = "copper-dropship", amount = 10000 },
  { type = "fluid", name = "dirty-water",    amount = 18000 }
}

recipe["refurbish-space-shuttle"].ingredients = {
  { type = "fluid", name = "water",           amount = 20000 },
  { type = "item",  name = "landed-shuttle",  amount = 1 },
  { type = "item",  name = "rocket-fuel",     amount = 1000 },
  { type = "item",  name = "space-lab-payload", amount = 1 },
  { type = "item",  name = stone,             amount = 1000 }
}

recipe["refurbish-space-shuttle"].results = {
  { type = "item",  name = "station-science", amount = 2 },
  {
    type = "item",
    name = "space-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or 1
  },
  { type = "fluid", name = "dirty-water",   amount = 18000 }
}

recipe["refurbish-spy-shuttle"].ingredients = {
  { type = "fluid", name = "water",             amount = 20000 },
  { type = "item",  name = "landed-spy-shuttle", amount = 1 },
  { type = "item",  name = "rocket-fuel",       amount = 1000 },
  { type = "item",  name = stone,               amount = 1000 }
}

recipe["refurbish-spy-shuttle"].results = {
  {
    type = "item",
    name = "spy-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or 1
  },
  { type = "item",  name = "planetary-data", amount = 2 },
  { type = "fluid", name = "dirty-water",  amount = 18000 }
}
recipe["probe-data-processing"].results = {
  { type = "item", name = "space-research-data", amount = 500 },
}

recipe["study-the-stars"].results = {
  { type = "item", name = "space-research-data", amount = 5 },
}

recipe["space-study-the-stars"].results = {
  { type = "item", name = "space-research-data", amount = 50 },
}

recipe["satellite-battery"].ingredients = {
  { type = "item", name = "electronic-components", amount = 100 },
  { type = "item", name = "lithium-sulfur-battery", amount = 150 },
  { type = "item", name = "processing-unit", amount = 10 },
  { type = "item", name = "power-switch",        amount = 1 }
}

recipe["satellite-bus"].ingredients = {
  { type = "item", name = "advanced-additional-engine-equipment", amount = 50 },
  { type = "item", name = "electronic-components",   amount = 1000 },
  { type = "item", name = "low-density-structure",   amount = 200 },
  { type = "item", name = "rare-metals",             amount = 200 }
}
if not mods["space-exploration"] then
  recipe["satellite-communications"].ingredients = {
    { type = "item", name = "kr-singularity-beacon",   amount = 5 },
    { type = "item", name = "vehicle-roboport-equipment",        amount = 5 },
    { type = "item", name = "advanced-additional-engine-equipment", amount = 10 },
    { type = "item", name = "low-density-structure",   amount = 20 },
    { type = "item", name = "processing-unit",     amount = 10 },
    { type = "item", name = "rare-metals",             amount = 200 }
  }
end
recipe["satellite-flight-computer"].ingredients = {
  { type = "item", name = "processing-unit",    amount = 300 },
  { type = "item", name = "ai-core",            amount = 100 },
  { type = "item", name = "electronic-components", amount = 1000 },
  { type = "item", name = "rare-metals",        amount = 200 }
}

recipe["satellite-radar"].ingredients = {
  { type = "item", name = "advanced-additional-engine-equipment", amount = 10 },
  { type = "item", name = "low-density-structure",   amount = 20 },
  { type = "item", name = "kr-advanced-radar",          amount = 100 },
  { type = "item", name = "processing-unit",     amount = 30 }
}

recipe["satellite-solar-array"].ingredients = {
  { type = "item", name = "advanced-additional-engine-equipment",      amount = 10 },
  { type = "item", name = "electronic-components",           amount = 400 },
  { type = "item", name = "low-density-structure",           amount = 10 },
  { type = "item", name = "power-switch",                    amount = 1 },
  { type = "item", name = "big-superior-solar-panel-equipment", amount = 10 }
}

recipe["satellite-thruster"].ingredients = {
  { type = "item", name = "advanced-additional-engine-equipment", amount = 50 },
  { type = "item", name = "imersium-plate",          amount = 100 },
  { type = "item", name = "low-density-structure",   amount = 50 },
  { type = "item", name = "processing-unit",     amount = 10 },
  { type = "item", name = "rocket-fuel",             amount = 200 }
}

recipe["shuttle-hull-recipe"].ingredients = {
  { type = "item", name = "satellite-battery",      amount = 20 },
  { type = "item", name = "satellite-bus",          amount = 15 },
  { type = "item", name = "satellite-communications", amount = 10 },
  { type = "item", name = "satellite-flight-computer", amount = 10 },
  { type = "item", name = "satellite-radar",        amount = 15 },
  { type = "item", name = "satellite-solar-array",  amount = 15 },
  { type = "item", name = "plastic-bar",            amount = 5000 },
  { type = "item", name = "imersium-plate",         amount = 5000 },
  { type = "item", name = stone,                    amount = 50000 }
}

recipe["space-lab-payload"].ingredients = {
  { type = "item", name = "kr-singularity-lab",     amount = 5 },
  { type = "item", name = "satellite-bus",          amount = 1 },
  { type = "item", name = "satellite-battery",      amount = 4 },
  { type = "item", name = "satellite-communications", amount = 1 },
  { type = "item", name = "satellite-flight-computer", amount = 1 },
  { type = "item", name = "satellite-solar-array",  amount = 4 }
}

recipe["telescope-components"].ingredients = {
  { type = "item", name = "advanced-additional-engine-equipment", amount = 50 },
  { type = "item", name = "kr-singularity-lab",      amount = 5 },
  { type = "item", name = "steel-plate",             amount = 100 },
  { type = "item", name = "kr-advanced-radar",          amount = 200 },
  { type = "item", name = "satellite-flight-computer", amount = 10 },
  { type = "item", name = stone,                     amount = 10000 },
  { type = "item", name = "rare-metals",             amount = 200 }
}

recipe["erp-lab"].ingredients = {
  { type = "item", name = "glass",            amount = 100 },
  { type = "item", name = "kr-singularity-lab", amount = 1 },
  { type = "item", name = "kr-quantum-computer", amount = 10 },
  { type = "item", name = "ai-core",          amount = 100 },
  { type = "item", name = "processing-unit",  amount = 200 },
}

-- Adjust Science to K2 cards

technology["improved-space-program-theory"].unit.ingredients = all_science
technology["advanced-machining"].unit.ingredients = all_science
technology["extremely-advanced-material-processing"].unit.ingredients = all_science
technology["space-lab"].unit.ingredients = all_science
technology["satellite-tracking"].unit.ingredients = all_science
technology["advanced-probe"].unit.ingredients = all_science
technology["erp-lab"].unit.ingredients = all_science
technology["ground-telescope"].unit.ingredients = all_science
technology["observation-satellite"].unit.ingredients = all_science
technology["spy-shuttle"].unit.ingredients = all_science
technology["shuttle-repurposing"].unit.ingredients = all_science
technology["space-shuttle"].unit.ingredients = all_science
technology["orbital-solar-collector"].unit.ingredients = all_science
technology["autonomous-space-mining-drones"].unit.ingredients = all_science
technology["asteroid-mining"].unit.ingredients = all_science
technology["orbital-assembler-power-problem"].unit.ingredients = all_science
technology["space-assembler-theory"].unit.ingredients = all_science
technology["orbital-autonomous-fabricators"].unit.ingredients = all_science

-- Adjust Techtree
table.insert(technology["space-shuttle"].prerequisites, "satellite-tracking")

-- replace ERPC Assembler with a modern one
require("assembler")

-- make this more expensive, at least enery wise
data.raw["assembling-machine"]["ground-auto-fabricator"].energy_usage = "4GW"
data.raw["assembling-machine"]["space-telescope-uplink-station"].energy_usage = "2GW"
data.raw["assembling-machine"]["ground-telescope"].energy_usage = "2GW"

if (mods["SpaceMod"] or mods["SpaceModFeorasFork"]) and
    settings.startup["ERPC-K2-integration-integrate-spacex"].value then
  -- adjust tech tree
  data.raw.technology["fusion-reactor"].prerequisites = {
    "orbital-assembler-power-problem",
    "space-construction"
  }

  data.raw.technology["orbital-autonomous-fabricators"].prerequisites = {
    "space-station-assembly",
    "orbital-assembler-power-problem",
    "vacuum-smelting"
  }
  data.raw.technology["space-assembly"].prerequisites = {
    "space-assembler-theory"
  }
  data.raw.technology["space-station-assembly"].prerequisites = {
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
  data.raw.technology["spy-shuttle"].prerequisites = {
    "space-shuttle",
    "space-telescope"
  }

  -- Adjust recipes
  local productionCost = settings.startup["SpaceX-production"].value
  if productionCost == nil then
    productionCost = 1
  end

  table.insert(recipe["life-support"].ingredients, { type = "item", name = "first-aid-kit", amount = 100 * productionCost })

  recipe["life-support"].ingredients = {
    { type = "item", name = "first-aid-kit",      amount = 200 * productionCost },
    { type = "item", name = "satellite-battery",  amount = 5 * productionCost },
    { type = "item", name = "satellite-bus",      amount = 5 * productionCost },
    { type = "item", name = "kr-steel-pipe",      amount = 200 * productionCost },
    { type = "item", name = "low-density-structure", amount = 100 * productionCost },
    { type = "item", name = "ai-core",            amount = 50 * productionCost },
    { type = "item", name = "imersium-plate",     amount = 100 * productionCost }
  }

  recipe["assembly-robot"].ingredients = {
    { type = "item", name = "satellite-battery",  amount = 2 * productionCost },
    { type = "item", name = "construction-robot", amount = 5 * productionCost },
    { type = "item", name = "electronic-components", amount = 200 * productionCost },
    { type = "item", name = "low-density-structure", amount = 20 * productionCost },
    { type = "item", name = "ai-core",            amount = 5 * productionCost }
  }

  recipe["drydock-assembly"].ingredients = {
    { type = "item", name = "processing-unit",    amount = 200 * productionCost },
    { type = "item", name = "low-density-structure", amount = 100 * productionCost },
    { type = "item", name = "assembly-robot",     amount = 10 * productionCost },
    { type = "item", name = "electronic-components", amount = 200 * productionCost },
    { type = "item", name = "vehicle-roboport-equipment",   amount = 10 * productionCost },
    { type = "item", name = "ai-core",            amount = 50 * productionCost },
    { type = "item", name = "imersium-plate",     amount = 100 * productionCost }
  }

  recipe["hull-component"].ingredients = {
    { type = "item", name = "low-density-structure", amount = 250 * productionCost },
    { type = "item", name = "electronic-components", amount = 200 * productionCost },
    { type = "item", name = "imersium-plate",     amount = 100 * productionCost }
  }

  recipe["protection-field"].ingredients = {
    { type = "item", name = "energy-shield-mk4-equipment", amount = 100 * productionCost },
    { type = "item", name = "low-density-structure",    amount = 100 * productionCost },
    { type = "item", name = "electronic-components",    amount = 200 * productionCost },
    { type = "item", name = "ai-core",                  amount = 50 * productionCost }
  }

  recipe["space-thruster"].ingredients = {
    { type = "item", name = "processing-unit",         amount = 100 * productionCost },
    { type = "item", name = "low-density-structure",   amount = 100 * productionCost },
    { type = "item", name = "advanced-additional-engine-equipment", amount = 50 * productionCost },
    { type = "item", name = "electronic-components",   amount = 200 * productionCost },
    { type = "item", name = "ai-core",                 amount = 50 * productionCost },
    { type = "item", name = "imersium-plate",          amount = 100 * productionCost }
  }

  recipe["fuel-cell"].ingredients = {
    { type = "item", name = "dt-fuel",            amount = 50 * productionCost },
    { type = "item", name = "low-density-structure", amount = 100 * productionCost },
    { type = "item", name = "processing-unit",    amount = 200 * productionCost },
    { type = "item", name = "imersium-plate",     amount = 50 * productionCost }
  }

  recipe["habitation"].ingredients = {
    { type = "item", name = "plastic-bar",       amount = 500 * productionCost },
    { type = "item", name = "low-density-structure", amount = 100 * productionCost },
    { type = "item", name = "electronic-components", amount = 200 * productionCost },
    { type = "item", name = "imersium-plate",    amount = 100 * productionCost }
  }

  recipe["command"].ingredients = {
    { type = "item", name = "processing-unit",    amount = 200 * productionCost },
    { type = "item", name = "low-density-structure", amount = 100 * productionCost },
    { type = "item", name = "electronic-components", amount = 3000 * productionCost },
    { type = "item", name = "glass",              amount = 200 * productionCost },
    { type = "item", name = "ai-core",            amount = 100 * productionCost },
    { type = "item", name = "imersium-plate",     amount = 300 * productionCost }
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
end



if mods["Kux-OrbitalIonCannon"] and settings.startup["ERPC-K2-integration-integrate-ioncannon"].value
then
  if recipe["orbital-ion-cannon"] then
    -- Adjust Recipe  orbital-ion-cannon
    recipe["orbital-ion-cannon"].ingredients = {
      { type = "item", name = "satellite-battery",      amount = 30 },
      { type = "item", name = "satellite-bus",          amount = 30 },
      { type = "item", name = "satellite-communications", amount = 20 },
      { type = "item", name = "satellite-flight-computer", amount = 5 },
      { type = "item", name = "satellite-radar",        amount = 30 },
      { type = "item", name = "satellite-solar-array",  amount = 30 },
      { type = "item", name = "ai-core",                amount = 100 },
      { type = "item", name = "imersium-plate",         amount = 200 },
      { type = "item", name = "kr-laser-artillery-turret", amount = 10 }
    }
  end
  if recipe["orbital-ion-cannon"].ingredients then
    recipe["orbital-ion-cannon"].ingredients = {
      { type = "item", name = "satellite-battery",      amount = 30 },
      { type = "item", name = "satellite-bus",          amount = 30 },
      { type = "item", name = "satellite-communications", amount = 20 },
      { type = "item", name = "satellite-flight-computer", amount = 5 },
      { type = "item", name = "satellite-radar",        amount = 30 },
      { type = "item", name = "satellite-solar-array",  amount = 30 },
      { type = "item", name = "ai-core",                amount = 100 },
      { type = "item", name = "imersium-plate",         amount = 200 },
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
