local recipe = data.raw.recipe
local refurbish_chance = settings.startup["ERPC-K2-integration-refurbish-chance"].value
local stone = "stone-brick"

if settings.startup["ERPC-K2-integration-use-k2-tiles"].value
then
  stone = "kr-black-reinforced-plate"
end

-- make this more expensive, at least enery wise
data.raw["assembling-machine"]["ground-auto-fabricator"].energy_usage = "4GW"
data.raw["assembling-machine"]["space-telescope-uplink-station"].energy_usage = "2GW"
data.raw["assembling-machine"]["ground-telescope"].energy_usage = "2GW"

recipe["advanced-assembler"].ingredients = {
  { type = "item", name = "kr-advanced-assembling-machine", amount = 20 },
  { type = "item", name = "processing-unit",                amount = 200 },
  { type = "item", name = "concrete",                       amount = 400 },
  { type = "item", name = "electronic-components",          amount = 200 },
  { type = "item", name = "kr-superior-inserter",           amount = 10 },
  { type = "item", name = "imersium-plate",                 amount = 400 }
}

recipe["autonomous-space-mining-drone"].ingredients = {
  { type = "item", name = "kr-advanced-assembling-machine",        amount = 100 },
  { type = "item", name = "kr-electric-mining-drill-mk3",          amount = 500 },
  { type = "item", name = "rocket-fuel",                           amount = 200 },
  { type = "item", name = "radioisotope-thermoelectric-generator", amount = 20 },
  { type = "item", name = "satellite-bus",                         amount = 20 },
  { type = "item", name = "satellite-communications",              amount = 1 },
  { type = "item", name = "satellite-flight-computer",             amount = 20 },
  { type = "item", name = "satellite-radar",                       amount = 10 },
  { type = "item", name = "satellite-thruster",                    amount = 10 },
  { type = "item", name = "kr-superior-long-inserter",             amount = 100 }
}

recipe["ground-auto-fabricator"].ingredients = {
  { type = "item", name = "ground-fabricator-component", amount = 10 }
}

recipe["ground-telescope"].ingredients = {
  { type = "item", name = "concrete",              amount = 1000 },
  { type = "item", name = "electric-engine-unit",  amount = 1000 },
  { type = "item", name = "electronic-components", amount = 1000 },
  { type = "item", name = "processing-unit",       amount = 500 },
  { type = "item", name = "telescope-components",  amount = 1 },
  { type = "item", name = "imersium-plate",        amount = 2000 },
  { type = "item", name = "kr-steel-pipe",         amount = 1000 }
}

recipe["orbital-fabricator-component"].ingredients = {
  { type = "item", name = "kr-advanced-assembling-machine", amount = 100 },
  { type = "item", name = "kr-advanced-chemical-plant",     amount = 100 },
  { type = "item", name = "autonomous-space-mining-drone",  amount = 10 },
  { type = "item", name = "centrifuge",                     amount = 250 },
  { type = "item", name = "kr-advanced-furnace",            amount = 500 },
  { type = "item", name = "oil-refinery",                   amount = 50 },
  { type = "item", name = "satellite-bus",                  amount = 100 },
  { type = "item", name = "satellite-communications",       amount = 200 },
  { type = "item", name = "satellite-flight-computer",      amount = 50 },
  { type = "item", name = "kr-superior-long-inserter",      amount = 500 }
}

recipe["radioisotope-thermoelectric-generator"].ingredients = {
  { type = "item", name = "substation",        amount = 500 },
  { type = "item", name = "processing-unit",   amount = 100 },
  { type = "item", name = "imersium-plate",    amount = 100 },
  { type = "item", name = "uranium-fuel-cell", amount = 100 }
}


recipe["refurbish-fabricator-shuttle"].ingredients = {
  { type = "fluid", name = "water",                        amount = 20000 },
  { type = "item",  name = "landed-fabricator-shuttle",    amount = 1 },
  { type = "item",  name = "orbital-fabricator-component", amount = 1 },
  { type = "item",  name = "rocket-fuel",                  amount = 2000 },
  { type = "item",  name = stone,                          amount = 5000 }
}

recipe["refurbish-fabricator-shuttle"].results = {
  {
    type = "item",
    name = "fabricator-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or
        1 --[[@as double]]
  },
  { type = "item",  name = "ground-fabricator-component", amount = 1 },
  { type = "fluid", name = "dirty-water",                 amount = 18000 }

}

recipe["refurbish-mining-shuttle"].ingredients = {
  { type = "fluid", name = "water",                 amount = 20000 },
  { type = "item",  name = "landed-mining-shuttle", amount = 1 },
  { type = "item",  name = "rocket-fuel",           amount = 2000 },
  { type = "item",  name = stone,                   amount = 2000 }
}

recipe["refurbish-mining-shuttle"].results = {
  {
    type = "item",
    name = "mining-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or
        1 --[[@as double]]
  },
  { type = "item",  name = "iron-dropship",   amount = 7500 },
  { type = "item",  name = "copper-dropship", amount = 10000 },
  { type = "fluid", name = "dirty-water",     amount = 18000 }
}

recipe["refurbish-space-shuttle"].ingredients = {
  { type = "fluid", name = "water",             amount = 20000 },
  { type = "item",  name = "landed-shuttle",    amount = 1 },
  { type = "item",  name = "rocket-fuel",       amount = 1000 },
  { type = "item",  name = "space-lab-payload", amount = 1 },
  { type = "item",  name = stone,               amount = 1000 }
}

recipe["refurbish-space-shuttle"].results = {
  { type = "item",  name = "station-science", amount = 2 },
  {
    type = "item",
    name = "space-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or
        1 --[[@as double]]
  },
  { type = "fluid", name = "dirty-water",     amount = 18000 }
}

recipe["refurbish-spy-shuttle"].ingredients = {
  { type = "fluid", name = "water",              amount = 20000 },
  { type = "item",  name = "landed-spy-shuttle", amount = 1 },
  { type = "item",  name = "rocket-fuel",        amount = 1000 },
  { type = "item",  name = stone,                amount = 1000 }
}

recipe["refurbish-spy-shuttle"].results = {
  {
    type = "item",
    name = "spy-shuttle",
    amount = 1,
    probability = settings.startup["ERPC-K2-integration-refurbish-not-guaranteed"].value and refurbish_chance or
        1 --[[@as double]]
  },
  { type = "item",  name = "planetary-data", amount = 2 },
  { type = "fluid", name = "dirty-water",    amount = 18000 }
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
  { type = "item", name = "electronic-components",  amount = 100 },
  { type = "item", name = "lithium-sulfur-battery", amount = 150 },
  { type = "item", name = "processing-unit",        amount = 10 },
  { type = "item", name = "power-switch",           amount = 1 }
}

recipe["satellite-bus"].ingredients = {
  { type = "item", name = "advanced-additional-engine-equipment", amount = 50 },
  { type = "item", name = "electronic-components",                amount = 1000 },
  { type = "item", name = "low-density-structure",                amount = 200 },
  { type = "item", name = "rare-metals",                          amount = 200 }
}
if not mods["space-exploration"] then
  recipe["satellite-communications"].ingredients = {
    { type = "item", name = "kr-singularity-beacon",                amount = 5 },
    { type = "item", name = "vehicle-roboport-equipment",           amount = 5 },
    { type = "item", name = "advanced-additional-engine-equipment", amount = 10 },
    { type = "item", name = "low-density-structure",                amount = 20 },
    { type = "item", name = "processing-unit",                      amount = 10 },
    { type = "item", name = "rare-metals",                          amount = 200 }
  }
end
recipe["satellite-flight-computer"].ingredients = {
  { type = "item", name = "processing-unit",       amount = 300 },
  { type = "item", name = "ai-core",               amount = 100 },
  { type = "item", name = "electronic-components", amount = 1000 },
  { type = "item", name = "rare-metals",           amount = 200 }
}

recipe["satellite-radar"].ingredients = {
  { type = "item", name = "advanced-additional-engine-equipment", amount = 10 },
  { type = "item", name = "low-density-structure",                amount = 20 },
  { type = "item", name = "kr-advanced-radar",                    amount = 100 },
  { type = "item", name = "processing-unit",                      amount = 30 }
}

recipe["satellite-solar-array"].ingredients = {
  { type = "item", name = "advanced-additional-engine-equipment", amount = 10 },
  { type = "item", name = "electronic-components",                amount = 400 },
  { type = "item", name = "low-density-structure",                amount = 10 },
  { type = "item", name = "power-switch",                         amount = 1 },
  { type = "item", name = "big-superior-solar-panel-equipment",   amount = 10 }
}

recipe["satellite-thruster"].ingredients = {
  { type = "item", name = "advanced-additional-engine-equipment", amount = 50 },
  { type = "item", name = "imersium-plate",                       amount = 100 },
  { type = "item", name = "low-density-structure",                amount = 50 },
  { type = "item", name = "processing-unit",                      amount = 10 },
  { type = "item", name = "rocket-fuel",                          amount = 200 }
}

recipe["shuttle-hull-recipe"].ingredients = {
  { type = "item", name = "satellite-battery",         amount = 20 },
  { type = "item", name = "satellite-bus",             amount = 15 },
  { type = "item", name = "satellite-communications",  amount = 10 },
  { type = "item", name = "satellite-flight-computer", amount = 10 },
  { type = "item", name = "satellite-radar",           amount = 15 },
  { type = "item", name = "satellite-solar-array",     amount = 15 },
  { type = "item", name = "plastic-bar",               amount = 5000 },
  { type = "item", name = "imersium-plate",            amount = 5000 },
  { type = "item", name = stone,                       amount = 50000 }
}

recipe["space-lab-payload"].ingredients = {
  { type = "item", name = "kr-singularity-lab",        amount = 5 },
  { type = "item", name = "satellite-bus",             amount = 1 },
  { type = "item", name = "satellite-battery",         amount = 4 },
  { type = "item", name = "satellite-communications",  amount = 1 },
  { type = "item", name = "satellite-flight-computer", amount = 1 },
  { type = "item", name = "satellite-solar-array",     amount = 4 }
}

recipe["telescope-components"].ingredients = {
  { type = "item", name = "advanced-additional-engine-equipment", amount = 50 },
  { type = "item", name = "kr-singularity-lab",                   amount = 5 },
  { type = "item", name = "steel-plate",                          amount = 100 },
  { type = "item", name = "kr-advanced-radar",                    amount = 200 },
  { type = "item", name = "satellite-flight-computer",            amount = 10 },
  { type = "item", name = stone,                                  amount = 10000 },
  { type = "item", name = "rare-metals",                          amount = 200 }
}

recipe["erp-lab"].ingredients = {
  { type = "item", name = "glass",               amount = 100 },
  { type = "item", name = "kr-singularity-lab",  amount = 1 },
  { type = "item", name = "kr-quantum-computer", amount = 10 },
  { type = "item", name = "ai-core",             amount = 100 },
  { type = "item", name = "processing-unit",     amount = 200 },
}
