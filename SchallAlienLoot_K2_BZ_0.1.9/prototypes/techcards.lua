-- Copyright (C) 2020 DBotThePony

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
-- of the Software, and to permit persons to whom the Software is furnished to do so,
-- subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all copies
-- or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
-- PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
-- FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
-- OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
-- DEALINGS IN THE SOFTWARE.
if mods["Krastorio2"] then

local function insert_dedup(target, value)
	for i, value2 in ipairs(target) do
		if value2 == value then return false end
	end

	return table.insert(target, value)
end

if data.raw.tool['alien-science-pack'] then
	data.raw.tool['alien-science-pack'].icon = '__SchallAlienLoot_K2_BZ__/graphics/alien-tech-card.png'
end

data.raw.recipe['alien-science-pack-from-alien-ore-2'] = nil
data.raw.recipe['alien-science-pack-from-alien-ore-3'] = nil
data.raw.recipe['alien-science-pack-from-alien-artifact'] = nil

table.insert(data.raw.technology['alien-technology'].unit.ingredients, {'military-science-pack', 1})
insert_dedup(data.raw.technology['alien-technology'].prerequisites, 'military-science-pack')

data:extend({
	{
		type = 'item',
		name = 'k2c-alien-research-data',
		localised_description = {'item-description.k2c-alien-research-data'},
		icon = '__SchallAlienLoot_K2_BZ__/graphics/alien-research-data.png',
		icon_size = 64,
		icon_mipmaps = 4,
		subgroup = 'science-pack',
		order = 'z[alien-science-pack-a]',
		stack_size = 200,
	},	
	{
		type = 'recipe',
		name = 'k2c-alien-research-data-artifact',
		
		enabled = true,
		category = 'bioprocessing',
		energy_required = 30,

		ingredients = {
			{'alien-artifact', 2},
			{'coke', 5},
			{'steel-plate', 5}
		},

		result = 'k2c-alien-research-data',
		result_count = 5,

		hide_from_player_crafting = settings.startup['alienloot-hide-machine-only-recipes'].value,
	},
	{
		type = 'recipe',
		name = 'k2c-alien-research-data-ore-3',

		enabled = true,
		category = 'bioprocessing',
		energy_required = 30,

		ingredients = {
			{'alien-ore-3', 20},
			{'coke', 5},
			{'steel-plate', 5}
		},

		result = 'k2c-alien-research-data',
		result_count = 5,

		hide_from_player_crafting = settings.startup['alienloot-hide-machine-only-recipes'].value,
	},
	{
		type = 'recipe',
		name = 'k2c-alien-research-data-ore-2',

		enabled = true,
		category = 'bioprocessing',
		energy_required = 30,

		ingredients = {
			{'alien-ore-2', 200},
			{'coke', 5},
			{'steel-plate', 5}
		},

		result = 'k2c-alien-research-data',
		result_count = 5,

		hide_from_player_crafting = settings.startup['alienloot-hide-machine-only-recipes'].value,
	},
	{
		type = 'recipe',
		name = 'k2c-alien-science-pack',

		enabled = true,
		category = 'advanced-crafting',
		energy_required = 20,

		ingredients = {
			{'blank-tech-card', 5},
			{'k2c-alien-research-data', 1},
			{'electronic-components', 5}
		},

		result = 'alien-science-pack',
		result_count = 5,

		hide_from_player_crafting = settings.startup['alienloot-hide-machine-only-recipes'].value,
	},
})
if mods["DeadlockStackingForSchallAlienLoot"] then
data.raw.technology['alien-technology'].effects = {
	{
		type = 'unlock-recipe',
		recipe = 'k2c-alien-research-data-ore-2'
	},
	{
		type = 'unlock-recipe',
		recipe = 'k2c-alien-research-data-ore-3'
	},
	{
		type = 'unlock-recipe',
		recipe = 'k2c-alien-research-data-artifact'
	},
	{
		type = 'unlock-recipe',
		recipe = 'k2c-alien-science-pack'
	},
	{
		type = 'unlock-recipe',
		recipe = 'deadlock-stacks-stack-alien-science-pack'
	},
	{
		type = 'unlock-recipe',
		recipe = 'deadlock-stacks-unstack-alien-science-pack'
	},
	
}
else
data.raw.technology['alien-technology'].effects = {
	{
		type = 'unlock-recipe',
		recipe = 'k2c-alien-research-data-ore-2'
	},
	{
		type = 'unlock-recipe',
		recipe = 'k2c-alien-research-data-ore-3'
	},
	{
		type = 'unlock-recipe',
		recipe = 'k2c-alien-research-data-artifact'
	},
	{
		type = 'unlock-recipe',
		recipe = 'k2c-alien-science-pack'
	},

}
end
-------------------------------------------------------------------------------


if deadlock then
	deadlock.add_stack("k2c-alien-research-data",  nil, "alien-technology", 64)
end

end