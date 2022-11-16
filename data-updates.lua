-- data-updates.lua

local recipe = data.raw.recipe
local technology = data.raw.technology

local refurbish_chance = settings.startup["ERPC-K2-integration-refurbish-chance"].value
local all_science = util.table.deepcopy( technology["kr-singularity-beacon"].unit.ingredients )
local stone = "stone-brick"

if settings.startup["ERPC-K2-integration-use-k2-tiles"].value
then
  stone = "kr-black-reinforced-plate"
end

recipe["advanced-assembler"].ingredients = {
  {"kr-advanced-assembling-machine", 20},
  {"processing-unit", 200},
  {"concrete", 400},
  {"electronic-components", 200},
  {"kr-superior-inserter", 10},
  {"imersium-plate", 400}
}

recipe["autonomous-space-mining-drone"].ingredients = {
  {"kr-advanced-assembling-machine", 100},
  {"kr-electric-mining-drill-mk3", 500},
  {"rocket-fuel", 200},
  {"radioisotope-thermoelectric-generator", 100},
  {"satellite-bus", 30},
  {"satellite-communications", 1},
  {"satellite-flight-computer", 50},
  {"satellite-radar", 10},
  {"satellite-thruster", 10},
  {"kr-superior-long-filter-inserter", 100}
}

recipe["ground-auto-fabricator"].ingredients = {
  {"ground-fabricator-component", 10}
}

recipe["ground-telescope"].ingredients = {
  {"concrete", 1000},
  {"electric-engine-unit", 1000},
  {"electronic-components", 1000},
  {"processing-unit", 500},
  {"telescope-components", 1},
  {"imersium-plate", 2000},
  {"kr-steel-pipe", 1000}
}

recipe["orbital-fabricator-component"].ingredients = {
  {"kr-advanced-assembling-machine", 100},
  {"kr-advanced-chemical-plant", 100},
  {"autonomous-space-mining-drone", 10},
  {"centrifuge", 250},
  {"kr-advanced-furnace", 500},
  {"oil-refinery", 50},
  {"satellite-bus", 200},
  {"satellite-communications", 500},
  {"satellite-flight-computer", 250},
  {"kr-superior-long-filter-inserter", 500}
}

recipe["radioisotope-thermoelectric-generator"].ingredients = {
  {"substation", 500},
  {"rocket-control-unit", 100},
  {"imersium-plate", 100},
  {"uranium-fuel-cell", 100}
}


recipe["refurbish-fabricator-shuttle"].ingredients = {
  {type = "fluid", name = "water", amount = 20000},
  {"landed-fabricator-shuttle", 1},
  {"orbital-fabricator-component", 1},
  {"rocket-fuel", 2000},
  {stone, 5000}
}

recipe["refurbish-fabricator-shuttle"].results = {
  {
    name = "fabricator-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or 1
  },
  {"ground-fabricator-component", 1},
  {type = "fluid", name = "dirty-water", amount = 18000}

}

recipe["refurbish-mining-shuttle"].ingredients = {
  {type = "fluid", name = "water", amount = 20000},
  {"landed-mining-shuttle", 1},
  {"rocket-fuel", 2000},
  {stone, 2000}
}

recipe["refurbish-mining-shuttle"].results = {
  {
    name = "mining-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or 1
  },
  {"iron-dropship", 7500},
  {"copper-dropship", 10000},
  {type = "fluid", name = "dirty-water", amount = 18000}
}

recipe["refurbish-space-shuttle"].ingredients = {
  {type = "fluid", name = "water", amount = 20000},
  {"landed-shuttle", 1},
  {"rocket-fuel", 1000},
  {"space-lab-payload", 1},
  {stone, 1000}
}

recipe["refurbish-space-shuttle"].results = {
  {"station-science", 2},
  {
    name = "space-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or 1
  },
  {type = "fluid", name = "dirty-water", amount = 18000}
}

recipe["refurbish-spy-shuttle"].ingredients = {
  {type = "fluid", name = "water", amount = 20000},
  {"landed-spy-shuttle", 1},
  {"rocket-fuel", 1000},
  {stone, 1000}
}

recipe["refurbish-spy-shuttle"].results = {
  {
    name = "spy-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or 1
  },
  {"planetary-data", 2},
  {type = "fluid", name = "dirty-water", amount = 18000}
}

recipe["satellite-battery"].ingredients = {
  {"electronic-components", 100},
  {"lithium-sulfur-battery", 150},
  {"rocket-control-unit", 10},
  {"power-switch", 1}
}

recipe["satellite-bus"].ingredients = {
  {"advanced-additional-engine", 50},
  {"electronic-components", 1000},
  {"low-density-structure", 200},
  {"rare-metals", 200}
}

recipe["satellite-communications"].ingredients = {
  {"kr-singularity-beacon", 5},
  {"vehicle-roboport", 5},
  {"advanced-additional-engine", 10},
  {"low-density-structure", 20},
  {"rocket-control-unit", 10},
  {"rare-metals", 200}
}

recipe["satellite-flight-computer"].ingredients = {
  {"processing-unit", 300},
  {"rocket-control-unit", 100},
  {"ai-core", 100},
  {"electronic-components", 1000},
  {"rare-metals", 200}
}

recipe["satellite-radar"].ingredients = {
  {"advanced-additional-engine", 10},
  {"low-density-structure", 20},
  {"advanced-radar", 100},
  {"rocket-control-unit", 30}
}

recipe["satellite-solar-array"].ingredients = {
  {"advanced-additional-engine", 10},
  {"electronic-components", 400},
  {"low-density-structure", 10},
  {"power-switch", 1},
  {"big-imersite-solar-panel-equipment", 10}
}

recipe["satellite-thruster"].ingredients = {
  {"advanced-additional-engine", 50},
  {"imersium-plate", 100},
  {"low-density-structure", 50},
  {"rocket-control-unit", 10},
  {"rocket-fuel", 200}
}

recipe["shuttle-hull-recipe"].ingredients = {
  {"satellite-battery", 40},
  {"satellite-bus", 70},
  {"satellite-communications", 20},
  {"satellite-flight-computer", 50},
  {"satellite-radar", 30},
  {"satellite-solar-array", 50},
  {"plastic-bar", 5000},
  {"imersium-plate", 5000},
  {stone, 50000}
}

recipe["space-lab-payload"].ingredients = {
  {"kr-singularity-lab", 5},
  {"satellite-bus", 1},
  {"satellite-battery", 4},
  {"satellite-communications", 1},
  {"satellite-flight-computer", 1},
  {"satellite-solar-array", 4}
}

recipe["telescope-components"].ingredients = {
  {"advanced-additional-engine", 50},
  {"kr-singularity-lab", 5},
  {"steel-plate", 100},
  {"advanced-radar", 2000},
  {"satellite-flight-computer", 10},
  {stone, 10000},
  {"rare-metals", 200}
}

recipe["erp-lab"].ingredients = {
  {"glass", 100},
  {"kr-singularity-lab", 1},
  {"kr-quantum-computer", 10},
  {"ai-core", 100},
  {"processing-unit", 200},
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

-- ERPC Assembler can only craft ERPC items
data.raw["assembling-machine"]["advanced-assembler"].crafting_categories = {"satellite-crafting"}
-- make this more expensive, at least enery wise
data.raw["assembling-machine"]["ground-auto-fabricator"].energy_usage = "4GW"
data.raw["assembling-machine"]["space-telescope-uplink-station"].energy_usage = "2GW"

if mods["SpaceMod"] and settings.startup["ERPC-K2-integration-integrate-spacex"].value then
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

  table.insert(recipe["life-support"].ingredients, {"first-aid-kit", 100 * productionCost})

  recipe["life-support"].ingredients = {
    {"first-aid-kit", 200 * productionCost},
    {"satellite-battery", 20 * productionCost},
    {"satellite-bus", 20 * productionCost},
    {"kr-steel-pipe", 200 * productionCost},
    {"low-density-structure", 100 * productionCost},
    {"ai-core", 50 * productionCost},
    {"imersium-plate", 100 * productionCost}
  }
  
  recipe["assembly-robot"].ingredients = {
    {"satellite-battery", 2 * productionCost},
    {"construction-robot", 5 * productionCost},
    {"electronic-components", 200 * productionCost},
    {"low-density-structure", 20 * productionCost},
    {"ai-core", 5 * productionCost}
  }

  recipe["drydock-assembly"].ingredients = {
    {"processing-unit", 200 * productionCost},
    {"low-density-structure", 100 * productionCost},
    {"assembly-robot", 50 * productionCost},
    {"electronic-components", 200 * productionCost},
    {"vehicle-roboport", 10 * productionCost},
    {"ai-core", 50 * productionCost},
    {"imersium-plate", 100 * productionCost}
  }
  
  recipe["hull-component"].ingredients = {
    {"low-density-structure", 250 * productionCost},
    {"electronic-components", 200 * productionCost},
    {"imersium-plate", 100 * productionCost}
  }
  
  recipe["protection-field"].ingredients = {
    {"energy-shield-mk4-equipment", 100 * productionCost},
    {"low-density-structure", 100 * productionCost},
    {"electronic-components", 200 * productionCost},
    {"ai-core", 50 * productionCost}
  }
  
  recipe["space-thruster"].ingredients = {
    {"processing-unit", 100 * productionCost},
    {"low-density-structure", 100 * productionCost},
    {"advanced-additional-engine", 50 * productionCost},
    {"electronic-components", 200 * productionCost},
    {"ai-core", 50 * productionCost},
    {"imersium-plate", 100 * productionCost}
  }

  recipe["fuel-cell"].ingredients = {
    {"dt-fuel", 500 * productionCost},
    {"low-density-structure", 100 * productionCost},
    {"processing-unit", 200 * productionCost},
    {"imersium-plate", 50 * productionCost}
  }
  
  recipe["habitation"].ingredients = {
    {"plastic-bar", 500 * productionCost},
    {"low-density-structure", 100 * productionCost},
    {"electronic-components", 200 * productionCost},
    {"imersium-plate", 100 * productionCost}
  }
  
  recipe["command"].ingredients = {
    {"processing-unit", 200 * productionCost},
    {"low-density-structure", 100 * productionCost},
    {"electronic-components", 3000 * productionCost},
    {"glass", 200 * productionCost},
    {"ai-core", 100 * productionCost},
    {"imersium-plate", 300 * productionCost}
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
  -- Adjust Recipe  orbital-ion-cannon
  recipe["orbital-ion-cannon"].normal.ingredients = {
    {"satellite-battery", 40},
    {"satellite-bus", 70},
    {"satellite-communications", 20},
    {"satellite-flight-computer", 5},
    {"satellite-radar", 50},
    {"satellite-solar-array", 50},
    {"ai-core", 50},
    {"imersium-plate", 200},
    {"kr-laser-artillery-turret", 10}
  }
  recipe["orbital-ion-cannon"].expensive.ingredients = {
    {"satellite-battery", 40},
    {"satellite-bus", 70},
    {"satellite-communications", 20},
    {"satellite-flight-computer", 5},
    {"satellite-radar", 50},
    {"satellite-solar-array", 50},
    {"ai-core", 50},
    {"imersium-plate", 200},
    {"kr-laser-artillery-turret", 10}
  }

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
