if mods["SpaceMod"] then
  data.raw["bool-setting"]["SpaceX-no-space-sci"].hidden = true
  data.raw["bool-setting"]["SpaceX-no-space-sci"].forced_value  = false
end
if mods["SpaceModFeorasFork"] then
  data.raw["bool-setting"]["SpaceX-no-krastorio"].forced_value  = true
  data.raw["bool-setting"]["SpaceX-no-krastorio"].hidden = true
  data.raw["bool-setting"]["SpaceX-no-space-sci"].forced_value  = false
  data.raw["bool-setting"]["SpaceX-no-space-sci"].hidden = true
  data.raw["bool-setting"]["SpaceX-classic-mode"].forced_value  = false
  data.raw["bool-setting"]["SpaceX-classic-mode"].hidden = true
end

