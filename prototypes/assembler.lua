
-- item
local assembler_item = data.raw["item"]["advanced-assembler"]
assembler_item.icon = "__ERPC-K2-integration__/graphics/assembler/assembler-icon.png"
assembler_item.icon_size = 64

-- recipe
local assembler_recipe = data.raw.recipe["advanced-assembler"]
assembler_recipe.icon = "__ERPC-K2-integration__/graphics/assembler/assembler-icon.png"
assembler_recipe.icon_size = 64

-- tech
local assembler_tech = data.raw.technology["advanced-machining"]
assembler_tech.icon = "__ERPC-K2-integration__/graphics/assembler/assembler-icon-big.png"
assembler_tech.icon_size = 640


-- entity
local assembler = data.raw["assembling-machine"]["advanced-assembler"]
assembler.icon = "__ERPC-K2-integration__/graphics/assembler/assembler-icon.png"
assembler.icon_size = 64

assembler.crafting_categories = { "satellite-crafting" }

assembler.collision_box = { { -2.3, -2.3 }, { 2.3, 2.3 } }
assembler.selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } }

assembler.graphics_set = {
  animation = {
    layers = {
      {
        filename = "__ERPC-K2-integration__/graphics/assembler/assembler-hr-shadow.png",
        priority = "high",
        size = { 520, 500 },
        shift = { 0, 0 },
        scale = 0.5,
        line_length = 1,
        repeat_count = 100,
        draw_as_shadow = true,
        animation_speed = 0.5,
      },
      {
        size = { 320, 320 },
        shift = { 0, 0 },
        scale = 0.5,
        -- line_length = 8,
        frame_count = 100,
        animation_speed = 0.5,
        stripes = {
          {
            filename = "__ERPC-K2-integration__/graphics/assembler/assembler-hr-animation-1.png",
            width_in_frames = 8,
            height_in_frames = 8,
          },
          {
            filename = "__ERPC-K2-integration__/graphics/assembler/assembler-hr-animation-2.png",
            width_in_frames = 8,
            height_in_frames = 5,
          },
        },
      },
    },
  },
  working_visualisations = {
    {
      fadeout = true,
      animation = {
        priority = "high",
        size = { 320, 320 },
        shift = { 0, 0 },
        frame_count = 100,
        animation_speed = 0.5,
        scale = 0.5,
        draw_as_glow = true,
        blend_mode = "additive",
        stripes = {
          {
            filename = "__ERPC-K2-integration__/graphics/assembler/assembler-hr-emission-1.png",
            width_in_frames = 8,
            height_in_frames = 8,
          },
          {
            filename = "__ERPC-K2-integration__/graphics/assembler/assembler-hr-emission-2.png",
            width_in_frames = 8,
            height_in_frames = 5,
          },
        },
      },
    },
  },

}

assembler.fluid_boxes =
{
  {
    production_type = "input",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 100,
    pipe_connections = { { flow_direction = "input", direction = defines.direction.north --[[@as data.Direction]], position = { 2, -2 } } },
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "input",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 100,
    pipe_connections = { { flow_direction = "input", direction = defines.direction.south--[[@as data.Direction]], position = { 0, 2 } } },
    secondary_draw_orders = { north = -1 }
  },

}
