-- item
local lab_item = data.raw.item["erp-lab"]

lab_item.icon = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-icon.png"
lab_item.icon_size = 64

-- recipe
local lab_recipe = data.raw.recipe["erp-lab"]
lab_recipe.icon = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-icon.png"
lab_recipe.icon_size = 64

-- tech
local lab_tech = data.raw.technology["erp-lab"]
lab_tech.icon = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-icon-big.png"
lab_tech.icon_size = 640


-- entity
local lab = data.raw["lab"]["erp-lab"]
lab.icon = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-icon.png"
lab.icon_size = 64

lab.collision_box = { { -2.8, -2.8 }, { 2.8, 2.8 } }
lab.selection_box = { { -3, -3 }, { 3, 3 } }

lab.on_animation = {
  -- filename = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-hr-animation-1.png",
  -- width = 410,
  -- height = 410,
  layers = {
    {
      filename = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-hr-shadow.png",
      priority = "high",
      size = { 900, 420 },
      shift = { 0, 0 },
      scale = 0.5,
      line_length = 1,
      repeat_count = 100,
      draw_as_shadow = true,
      animation_speed = 0.5,
    },
    {
      size = { 410, 410 },
      shift = { 0, 0 },
      scale = 0.5,
      -- line_length = 8,
      frame_count = 100,
      animation_speed = 0.5,
      stripes = {
        {
          filename = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-hr-animation-1.png",
          width_in_frames = 8,
          height_in_frames = 8,
        },
        {
          filename = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-hr-animation-2.png",
          width_in_frames = 8,
          height_in_frames = 5,
        },
      },
    },
    {
      priority = "high",
      size = { 410, 410 },
      width = 410,
      heigth = 410,
      shift = { 0, 0 },
      frame_count = 100,
      animation_speed = 0.5,
      scale = 0.5,
      draw_as_glow = true,
      blend_mode = "additive",
      stripes = {
        {
          filename = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-hr-emission-1.png",
          width_in_frames = 8,
          height_in_frames = 8,
        },
        {
          filename = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-hr-emission-2.png",
          width_in_frames = 8,
          height_in_frames = 5,
        },
      },
    },
  },
}
lab.off_animation = {
  layers = {
    {
      filename = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-hr-animation-1.png",
      priority = "high",
      width = 410,
      height = 410,
      shift = { 0.0, 0.0 },
      frame_count = 1,
      scale = 0.5,
    },
    {
      filename = "__ERPC-K2-integration__/graphics/quantum-lab/quantum-lab-hr-shadow.png",
      priority = "high",
      size = { 900, 420 },
      shift = { 0, 0 },
      frame_count = 1,
      draw_as_shadow = true,
      scale = 0.5,
    },
  },
}
lab.icons_positioning = {
  { inventory_index = defines.inventory.lab_modules, shift = { 0.0, 1.6 } },
  {
    inventory_index = defines.inventory.lab_input,
    shift = { 0, -1.5 },
    max_icons_per_row = 3,
    separation_multiplier = 1 / 1.1,
    scale = 1,
  },
}
