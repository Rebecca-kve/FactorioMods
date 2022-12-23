local function extendItems(source, name, subgroup, order, itype, tint, stack_size)
    local item = table.deepcopy(data.raw[itype or "item"][source])
    data:extend({
        {
            icons = {{icon = item.icon, icon_mipmaps = 4, icon_size = 64, tint = tint}},
            name = name,
            order = order,
            place_result = name,
            stack_size = stack_size,
            subgroup = subgroup,
            type = itype
        }
    })
end

fuelcellcolor = {
  ["nuclear_color"] = { 
    r = 80 / 255,
    g = 180 / 255,
    b = 100 / 255,
    a = 0.8 },
  ["fusion_color"] = { 
    r = 252 / 255,
    g = 226 / 255,
    b =   5 / 255,
    a = 0.8 },
  ["antimatter_color"] = { 
    r =  15 / 255,
    g =  82 / 255,
    b = 186 / 255,
    a = 0.8 },
  ["nuclear_color_icon"] = { 
    r = 120 / 255,
    g = 180 / 255,
    b = 130 / 255,
    a = 0.5 },
  ["fusion_color_icon"] = { 
    r = 230 / 255,
    g = 220 / 255,
    b = 110 / 255,
    a = 0.5 },
  ["antimatter_color_icon"] = { 
    r = 120 / 255,
    g = 165 / 255,
    b = 190 / 255,
    a = 0.5 },
}

local nuclear_cargo = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
nuclear_cargo.name = "nuclear-cargo-wagon"
nuclear_cargo.minable.result = nuclear_cargo.name
nuclear_cargo.max_health = 1000
nuclear_cargo.weight = 2500
nuclear_cargo.inventory_size = 60
nuclear_cargo.color = fuelcellcolor.nuclear_color

local nuclear_fluid = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
nuclear_fluid.name = "nuclear-fluid-wagon"
nuclear_fluid.minable.result = nuclear_fluid.name
nuclear_fluid.max_health = 1000
nuclear_fluid.weight = 2500
nuclear_fluid.capacity = 35000
nuclear_fluid.color = fuelcellcolor.nuclear_color

data:extend({nuclear_cargo, nuclear_fluid})
data.raw['cargo-wagon']['nuclear-cargo-wagon'].equipment_grid = 'kr-wagons-grid'
data.raw['fluid-wagon']['nuclear-fluid-wagon'].equipment_grid = 'kr-wagons-grid'
data.raw['cargo-wagon']['nuclear-cargo-wagon'].allow_robot_dispatch_in_automatic_mode = true


local fusion_cargo = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
fusion_cargo.name = "fusion-cargo-wagon"
fusion_cargo.minable.result = fusion_cargo.name
fusion_cargo.max_health = 1200
fusion_cargo.weight = 3000
fusion_cargo.inventory_size = 80
fusion_cargo.color = fuelcellcolor.fusion_color
	
local fusion_fluid = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
fusion_fluid.name = "fusion-fluid-wagon"
fusion_fluid.minable.result = fusion_fluid.name
fusion_fluid.max_health = 1200
fusion_fluid.weight = 3000
fusion_fluid.capacity = 50000
fusion_fluid.color = fuelcellcolor.fusion_color

local antimatter_cargo = table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
antimatter_cargo.name = "antimatter-cargo-wagon"
antimatter_cargo.minable.result = antimatter_cargo.name
antimatter_cargo.max_health = 1400
antimatter_cargo.weight = 4000
antimatter_cargo.inventory_size = 120
antimatter_cargo.color = fuelcellcolor.antimatter_color
	
local antimatter_fluid = table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"])
antimatter_fluid.name = "antimatter-fluid-wagon"
antimatter_fluid.minable.result = antimatter_fluid.name
antimatter_fluid.max_health = 1400
antimatter_fluid.weight = 4000
antimatter_fluid.capacity = 75000
antimatter_fluid.color = fuelcellcolor.antimatter_color
	
data:extend({fusion_cargo, fusion_fluid, antimatter_cargo, antimatter_fluid})
	
data.raw['cargo-wagon']['fusion-cargo-wagon'].equipment_grid = 'kr-wagons-grid'
data.raw['cargo-wagon']['antimatter-cargo-wagon'].equipment_grid = 'kr-wagons-grid'
data.raw['fluid-wagon']['fusion-fluid-wagon'].equipment_grid = 'kr-wagons-grid'
data.raw['fluid-wagon']['antimatter-fluid-wagon'].equipment_grid = 'kr-wagons-grid'
data.raw['cargo-wagon']['fusion-cargo-wagon'].allow_robot_dispatch_in_automatic_mode = true
data.raw['cargo-wagon']['antimatter-cargo-wagon'].allow_robot_dispatch_in_automatic_mode = true


local _wagon_stack      = 5
local _locomotive_stack = 5
local _subgroup         = "train-transport"
local _itype            = "item-with-entity-data"


local items = {
	{source = "cargo-wagon", name = "nuclear-cargo-wagon", subgroup = _subgroup, order = "a[train-system]-g[cargo-wagon]-b", itype = _itype, tint = fuelcellcolor.nuclear_color_icon, stack_size = _wagon_stack},
	{source = "fluid-wagon", name = "nuclear-fluid-wagon", subgroup = _subgroup, order = "a[train-system]-h[fluid-wagon]-b", itype = _itype, tint = fuelcellcolor.nuclear_color_icon, stack_size = _wagon_stack},
	{source = "cargo-wagon", name = "fusion-cargo-wagon", subgroup = _subgroup, order = "a[train-system]-g[cargo-wagon]-c", itype = _itype, tint = fuelcellcolor.fusion_color_icon, stack_size = _wagon_stack},
	{source = "cargo-wagon", name = "antimatter-cargo-wagon", subgroup = _subgroup, order = "a[train-system]-g[cargo-wagon]-d", itype = _itype, tint = fuelcellcolor.antimatter_color_icon, stack_size = _wagon_stack},
	{source = "fluid-wagon", name = "fusion-fluid-wagon", subgroup = _subgroup, order = "a[train-system]-h[fluid-wagon]-c", itype = _itype, tint = fuelcellcolor.fusion_color_icon, stack_size = _wagon_stack},
	{source = "fluid-wagon", name = "antimatter-fluid-wagon", subgroup = _subgroup, order = "a[train-system]-h[fluid-wagon]-d", itype = _itype, tint = fuelcellcolor.antimatter_color_icon, stack_size = _wagon_stack}
}


for _, item in pairs(items) do
    extendItems(item.source, item.name, item.subgroup, item.order, item.itype, item.tint, item.stack_size)
end


---Recipes
data:extend({

	-------------NUCLEAR---------------
    {
        type = "recipe",
        energy_required = 8,
        name = "nuclear-cargo-wagon",
        enabled = false,
        ingredients = {
            {"cargo-wagon", 1},
            {"rare-metals", 10},
            {"uranium-238", 10},
			{"steel-gear-wheel", 10}
        },
        result = "nuclear-cargo-wagon"
    },
	{
        type = "recipe",
        energy_required = 8,
        name = "nuclear-fluid-wagon",
        enabled = false,
        ingredients = {
            {"fluid-wagon", 1},
            {"rare-metals", 10},
            {"kr-steel-pipe", 8},
			{"uranium-238", 10}
        },
        result = "nuclear-fluid-wagon"
    },
	-------------FUSION-----------------
    {
        type = "recipe",
        energy_required = 8,
        name = "fusion-cargo-wagon",
        enabled = false,
        ingredients = {
            {"nuclear-cargo-wagon", 1},
            {"low-density-structure", 5},
            {"tritium", 1},
			{"electric-engine-unit", 5}
        },
        result = "fusion-cargo-wagon"
    },
	{
        type = "recipe",
        energy_required = 8,
        name = "fusion-fluid-wagon",
        enabled = false,
        ingredients = {
            {"nuclear-fluid-wagon", 1},
            {"low-density-structure", 5},
			{"tritium", 1},
			{"electric-engine-unit", 5}
        },
        result = "fusion-fluid-wagon"
    },
	-------------ANTIMATTER-------------
   {
        type = "recipe",
        energy_required = 8,
        name = "antimatter-cargo-wagon",
        enabled = false,
        ingredients = {
            {"fusion-cargo-wagon", 1},
            {"ai-core", 2},
            {"energy-control-unit", 1},
			{"imersium-beam", 10}
        },
        result = "antimatter-cargo-wagon"
    },
	{
        type = "recipe",
        energy_required = 8,
        name = "antimatter-fluid-wagon",
        enabled = false,
        ingredients = {
            {"fusion-fluid-wagon", 1},
            {"ai-core", 2},
			{"energy-control-unit", 1},
			{"imersium-beam", 10}
        },
        result = "antimatter-fluid-wagon"
    },
})
	
	
---Unlock tech
	






