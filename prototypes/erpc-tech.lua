local technology = data.raw.technology


local all_science = {}
if mods["space-exploration"] then
  all_science = util.table.deepcopy(technology["se-lifesupport-equipment-1"].unit.ingredients)
else
  all_science = util.table.deepcopy(technology["kr-singularity-beacon"].unit.ingredients)
end

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

