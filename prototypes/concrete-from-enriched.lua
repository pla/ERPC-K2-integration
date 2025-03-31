local data_util = require("__flib__.data-util")
local table = require("__flib__.table")

local function sc_icon(product, ingredient)
  local product_icon = data_util.create_icons(data.raw[product.type][product.name])
  local ingredient_icon = data_util.create_icons(data.raw[ingredient.type][ingredient.name])
  if ingredient_icon == nil then
    error("could not create icon")
  end
  ingredient_icon[1].scale = 0.22
  ingredient_icon[1].shift = { -8, -8 }
  return table.array_merge({ product_icon, ingredient_icon })
end

-- Concrete with enriched Iron Ore
data:extend({
  {
    type = "recipe",
    name = "erpc-k2-s-c-concrete-enriched",
    icons = sc_icon({ type = "item", name = "concrete" }, { type = "item", name = "kr-enriched-iron" }),
    energy_required = 1.0,
    enabled = false,
    category = "kr-smelting-crafting",
    subgroup = "kr-smelting-crafting",
    allow_productivity = false,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = {
      { type = "item",  name = "kr-enriched-iron", amount = 1 },
      { type = "item",  name = "stone-brick",  amount = 10 },
      { type = "fluid", name = "water",        amount = 100 },
    },
    results = { { type = "item", name = "concrete", amount = 10 } },
  },
})

table.insert(data.raw.technology["kr-automation"].effects,
  { type = "unlock-recipe", recipe = "erpc-k2-s-c-concrete-enriched" })
table.insert(data.raw.technology["extremely-advanced-material-processing"].effects,
  { type = "unlock-recipe", recipe = "erpc-k2-s-c-concrete-enriched" })
