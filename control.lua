-- control.lua
script.on_configuration_changed(function(data)
	for index, force in pairs(game.forces) do
		local technologies = force.technologies
		local recipes = force.recipes
		for nindex, effect in pairs(technologies["kr-automation"].effects) do
			--Set the recipe as researched if kr-automation is.
			if effect.type == "unlock-recipe" then
				recipes[effect.recipe].enabled = technologies["kr-automation"].researched
			end
		end
	end
end)