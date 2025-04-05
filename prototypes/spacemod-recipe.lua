local recipe = data.raw.recipe

if ( mods["SpaceModFeorasFork"]) and
    settings.startup["ERPC-K2-integration-integrate-spacex"].value then

  -- Adjust recipes
  local productionCost = settings.startup["SpaceX-production"].value
  if productionCost == nil then
    productionCost = 1
  end

  -- table.insert(recipe["life-support"].ingredients,
  --   { type = "item", name = "kr-first-aid-kit", amount = 100 * productionCost })

  recipe["life-support"].ingredients = {
    { type = "item", name = "kr-first-aid-kit",         amount = 200 * productionCost },
    { type = "item", name = "satellite-battery",     amount = 5 * productionCost },
    { type = "item", name = "satellite-bus",         amount = 5 * productionCost },
    { type = "item", name = "kr-steel-pipe",         amount = 200 * productionCost },
    { type = "item", name = "low-density-structure", amount = 100 * productionCost },
    { type = "item", name = "kr-ai-core",               amount = 50 * productionCost },
    { type = "item", name = "kr-imersium-plate",        amount = 100 * productionCost }
  }

  recipe["assembly-robot"].ingredients = {
    { type = "item", name = "satellite-battery",     amount = 2 * productionCost },
    { type = "item", name = "construction-robot",    amount = 5 * productionCost },
    { type = "item", name = "kr-electronic-components", amount = 200 * productionCost },
    { type = "item", name = "low-density-structure", amount = 20 * productionCost },
    { type = "item", name = "kr-ai-core",               amount = 5 * productionCost }
  }

  recipe["drydock-assembly"].ingredients = {
    { type = "item", name = "processing-unit",            amount = 200 * productionCost },
    { type = "item", name = "low-density-structure",      amount = 100 * productionCost },
    { type = "item", name = "assembly-robot",             amount = 10 * productionCost },
    { type = "item", name = "kr-electronic-components",      amount = 200 * productionCost },
    { type = "item", name = "kr-vehicle-roboport-equipment", amount = 10 * productionCost },
    { type = "item", name = "kr-ai-core",                    amount = 50 * productionCost },
    { type = "item", name = "kr-imersium-plate",             amount = 100 * productionCost }
  }

  recipe["hull-component"].ingredients = {
    { type = "item", name = "low-density-structure", amount = 250 * productionCost },
    { type = "item", name = "kr-electronic-components", amount = 200 * productionCost },
    { type = "item", name = "kr-imersium-plate",        amount = 100 * productionCost }
  }

  recipe["protection-field"].ingredients = {
    { type = "item", name = "kr-energy-shield-mk4-equipment", amount = 100 * productionCost },
    { type = "item", name = "low-density-structure",       amount = 100 * productionCost },
    { type = "item", name = "kr-electronic-components",       amount = 200 * productionCost },
    { type = "item", name = "kr-ai-core",                     amount = 50 * productionCost }
  }

  recipe["space-thruster"].ingredients = {
    { type = "item", name = "processing-unit",                      amount = 100 * productionCost },
    { type = "item", name = "low-density-structure",                amount = 100 * productionCost },
    { type = "item", name = "kr-advanced-additional-engine-equipment", amount = 50 * productionCost },
    { type = "item", name = "kr-electronic-components",                amount = 200 * productionCost },
    { type = "item", name = "kr-ai-core",                              amount = 50 * productionCost },
    { type = "item", name = "kr-imersium-plate",                       amount = 100 * productionCost }
  }

  recipe["fuel-cell"].ingredients = {
    { type = "item", name = "kr-dt-fuel-cell",               amount = 50 * productionCost },
    { type = "item", name = "low-density-structure", amount = 100 * productionCost },
    { type = "item", name = "processing-unit",       amount = 200 * productionCost },
    { type = "item", name = "kr-imersium-plate",        amount = 50 * productionCost }
  }

  recipe["habitation"].ingredients = {
    { type = "item", name = "plastic-bar",           amount = 500 * productionCost },
    { type = "item", name = "low-density-structure", amount = 100 * productionCost },
    { type = "item", name = "kr-electronic-components", amount = 200 * productionCost },
    { type = "item", name = "kr-imersium-plate",        amount = 100 * productionCost }
  }

  recipe["command"].ingredients = {
    { type = "item", name = "processing-unit",       amount = 200 * productionCost },
    { type = "item", name = "low-density-structure", amount = 100 * productionCost },
    { type = "item", name = "kr-electronic-components", amount = 3000 * productionCost },
    { type = "item", name = "kr-glass",                 amount = 200 * productionCost },
    { type = "item", name = "kr-ai-core",               amount = 100 * productionCost },
    { type = "item", name = "kr-imersium-plate",        amount = 300 * productionCost }
  }
  
  recipe["space-oxygen-barrel"].ingredients = {
    { type = "fluid", name = "kr-oxygen",       amount = 50 * productionCost },
    { type = "item", name = "barrel", amount = 1 * productionCost },
  }
  recipe["space-oxygen-barrel"].category = "crafting-with-fluid"
end