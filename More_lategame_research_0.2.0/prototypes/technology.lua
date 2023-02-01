production_complexity_1 = {
	{"automation-science-pack", 1}
}
production_complexity_2 = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1}
}
production_complexity_3 = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1}
}
military_complexity_3 = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"military-science-pack", 1}
}
production_complexity_4 = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1},
	{"production-science-pack", 1}
}
military_complexity_4 = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1},
	{"military-science-pack", 1}
}

production_complexity_5 = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1},
	{"production-science-pack", 1},
	{"utility-science-pack", 1}
}
military_complexity_5 = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1},
	{"military-science-pack", 1},
	{"utility-science-pack", 1}
}
production_complexity_6 = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1},
	{"production-science-pack", 1},
	{"utility-science-pack", 1},
	{"space-science-pack", 1}
}
military_complexity_6 = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1},
	{"military-science-pack", 1},
	{"utility-science-pack", 1},
	{"space-science-pack", 1}
}


-- braking force
if settings.startup["braking-force"].value == true then
data:extend({



    {
    type = "technology",
    name = "braking-force-8",
    icon_size = 256,
    icon = "__base__/graphics/technology/braking-force.png",
    effects =
    {
      {
        type = "train-braking-force-bonus",
        modifier = 0.2
      }
    },
    prerequisites = {"braking-force-7"},
    unit =
    {
    count_formula = "1.5^(L-7)*800",
    ingredients = production_complexity_6,
      time = 60
    },
  max_level = "infinite",
    upgrade = true,
    order = "b-f-a"
  },

})
end

-- Bot carry
if settings.startup["worker-robots-storage"].value == true then
data:extend({
  {
    type = "technology",
    name = "worker-robots-storage-4",
    icon = "__More_lategame_research__/graphics//capacity.png",
    icon_size = 128,
    prerequisites = {"worker-robots-storage-3"},
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    unit =
    {
      count_formula = "1.8^(L-4)*800",
      ingredients = production_complexity_6,
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-e"
  },
  
})
end

-- Weapon Shooting Speed
if settings.startup["weapon-shooting-speed"].value == true then
data:extend({
 {
    type = "technology",
    name = "weapon-shooting-speed-7",
    icon_size = 256,
    icon = "__base__/graphics/technology/weapon-shooting-speed-3.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.1
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.1
      },
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = 0.1
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 0.1
      },
	  {
        type = "gun-speed",
        ammo_category = "laser",
        modifier = 0.1
      }
    },
    prerequisites = {"weapon-shooting-speed-6"},
    unit =
    {
      count_formula = "2^(L-6)*1000",
      ingredients = military_complexity_6,
      time = 60
    },
	max_level = "infinite",
    upgrade = true,
    order = "e-l-f"
  },
})
end

-- Inserter stack
if settings.startup["inserter-capacity-bonus"].value == true then
data:extend({
{
            type = "technology",
            name = "inserter-capacity-bonus-8",
            icon = "__base__/graphics/technology/inserter-capacity.png",
            icon_size = 256,
            effects =
            {
				{
					type = "inserter-stack-size-bonus",
					modifier = 0.5
				},
                {
                    type = "stack-inserter-capacity-bonus",
                    modifier = 2
                }
            },
            prerequisites = {"inserter-capacity-bonus-7"},
            unit =
            {
                count_formula = "2^(L-7)*1000",
                ingredients = production_complexity_6,
                time = 60
            },
            max_level = "infinite",
            upgrade = true,
            order = "c-o-i"
        },
})
end
-- Bot battery
if settings.startup["worker-robot-battery"].value == true then
data:extend({
 {
    type = "technology",
    name = "worker-robot-battery-1",
    icon = "__More_lategame_research__/graphics/worker-robot-battery.png",
    icon_size = 128,
    effects =
    {
      {
        type = "worker-robot-battery",
        modifier = 0.05
      }
    },
    prerequisites = {"robotics"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = production_complexity_3,
      time = 60
    },
    upgrade = true,
    max_level = "3",
    order = "c-k-h-e"
  },
  {
    type = "technology",
    name = "worker-robot-battery-4",
    icon = "__More_lategame_research__/graphics/worker-robot-battery.png",
    icon_size = 128,
    effects =
    {
      {
        type = "worker-robot-battery",
        modifier = 0.05
      }
    },
    prerequisites = {"worker-robot-battery-1"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = production_complexity_4,
      time = 60
    },
    upgrade = true,
    max_level = "7",
    order = "c-k-h-e"
  },
  {
    type = "technology",
    name = "worker-robot-battery-8",
    icon = "__More_lategame_research__/graphics/worker-robot-battery.png",
    icon_size = 128,
    effects =
    {
      {
        type = "worker-robot-battery",
        modifier = 0.05
      }
    },
    prerequisites = {"worker-robot-battery-4"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = production_complexity_5,
      time = 60
    },
    upgrade = true,
    max_level = "11",
    order = "c-k-h-e"
  },
  {
    type = "technology",
    name = "worker-robot-battery-12",
    icon = "__More_lategame_research__/graphics/worker-robot-battery.png",
    icon_size = 128,
    effects =
    {
      {
        type = "worker-robot-battery",
        modifier = 0.05
      }
    },
    prerequisites = {"worker-robot-battery-8"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = production_complexity_6,
      time = 60
    },
    upgrade = true,
    max_level = "infinite",
    order = "c-k-h-e"
  },
})
end
-- follower lifetime
if settings.startup["follower-robot-lifetime"].value == true then
data:extend({
{
    type = "technology",
    name = "follower-robot-lifetime-1",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/follower.png",
    effects =
    {
      {
        type = "follower-robot-lifetime",
        modifier = 0.3
      }
    },
    prerequisites = {"defender"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = military_complexity_3,
      time = 60
    },
    upgrade = true,
    order = "c-k-f-f"
  },
{
    type = "technology",
    name = "follower-robot-lifetime-2",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/follower.png",
    effects =
    {
      {
        type = "follower-robot-lifetime",
        modifier = 0.2
      }
    },
    prerequisites = {"follower-robot-lifetime-1"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = military_complexity_4,
      time = 60
    },
    upgrade = true,
    order = "c-k-f-f"
  },
  {
    type = "technology",
    name = "follower-robot-lifetime-3",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/follower.png",
    effects =
    {
      {
        type = "follower-robot-lifetime",
        modifier = 0.1
      }
    },
    prerequisites = {"follower-robot-lifetime-2"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = military_complexity_5,
	  time = 60
	},
    upgrade = true,
    order = "c-k-f-f"
  },
{
    type = "technology",
    name = "follower-robot-lifetime-4",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/follower.png",
    effects =
    {
      {
        type = "follower-robot-lifetime",
        modifier = 0.1
      }
    },
    prerequisites = {"follower-robot-lifetime-3"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = military_complexity_6,
      time = 60
    },
    upgrade = true,
    max_level = "infinite",
    order = "c-k-f-f"
  },
})
end
     -- Lab speed
if settings.startup["research-speed"].value == true then
data:extend({
{
	  type = "technology",
	  name = "research-speed-7",
	  icon_size = 256,
	  icon = "__base__/graphics/technology/research-speed.png",
	  effects =
	  {
		{
		  type = "laboratory-speed",
		  modifier = 0.05
		}
	  },
	  prerequisites = {"research-speed-6"},
	  unit =
	  {
	 	count_formula = "2^(L-7)*1000",
		ingredients = production_complexity_6,
		time = 60
	  },
	  upgrade = true,
	  max_level = "infinite",
	  order = "c-m-d"
	},
})
end
   -- Lab prod
if settings.startup["laboratory-productivity"].value == true then   
data:extend({
     {
    type = "technology",
    name = "laboratory-productivity-1",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/lab-product-tech.png",
    effects =
    {
      {
        type = "laboratory-productivity",
        modifier = 0.02
      }
    },
    prerequisites = {"automation-2"},
    unit =
    {
      count_formula = "L*L*100",
      ingredients = production_complexity_2,
      time = 60
    },
    upgrade = true,
    order = "c-k-f-f"
  },
   
     {
    type = "technology",
    name = "laboratory-productivity-2",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/lab-product-tech.png",
    effects =
    {
      {
        type = "laboratory-productivity",
        modifier = 0.02
      }
    },
    prerequisites = {"laboratory-productivity-1"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = production_complexity_3,
      time = 60
    },
    upgrade = true,
    order = "c-k-f-f"
  },
   
     {
    type = "technology",
    name = "laboratory-productivity-3",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/lab-product-tech.png",
    effects =
    {
      {
        type = "laboratory-productivity",
        modifier = 0.02
      }
    },
    prerequisites = {"laboratory-productivity-2"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = production_complexity_4,
      time = 60
    },
    upgrade = true,
    order = "c-k-f-f"
  },

 {
    type = "technology",
    name = "laboratory-productivity-4",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/lab-product-tech.png",
    effects =
    {
      {
        type = "laboratory-productivity",
        modifier = 0.02
      }
    },
    prerequisites = {"laboratory-productivity-3"},
    unit =
    {
	  count_formula = "L*L*50",
      ingredients = production_complexity_5,
      time = 60
    },
    upgrade = true,
    order = "c-k-f-f"
  },
   
  {
    type = "technology",
    name = "laboratory-productivity-5",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/lab-product-tech.png",
    effects =
    {
      {
        type = "laboratory-productivity",
        modifier = 0.02
      }
    },
    prerequisites = {"laboratory-productivity-4"},
    unit =
    {
      count_formula = "2^(L-5)*1500",
      ingredients = production_complexity_6,
      time = 60
    },
    upgrade = true,
    max_level = "infinite",
    order = "c-k-f-f"
  },
  

  
})
end
