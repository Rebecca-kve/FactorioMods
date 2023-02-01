if mods['Krastorio2'] then

	-- braking force
  if settings.startup["braking-force"].value == true then
    data.raw.technology["braking-force-8"].max_level = 10
	data:extend({
      {
      type = "technology",
      name = "braking-force-11",
      icon_size = 256,
      icon = "__base__/graphics/technology/braking-force.png",
      effects =
      {
        {
          type = "train-braking-force-bonus",
          modifier = 0.2
        }
      },
      prerequisites = {"braking-force-10", "kr-advanced-tech-card"},
      unit =
      {
      count_formula = "1.5^(L-7)*800",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { krastorio.optimization_tech_card_name, 1 },
        { "matter-tech-card", 1 },
        { "advanced-tech-card", 1 },
      },
        time = 60
      },
    max_level = "15",
    upgrade = true,
    order = "b-f-a"
    },
	
    {
      type = "technology",
      name = "braking-force-16",
      icon_size = 256,
      icon = "__base__/graphics/technology/braking-force.png",
      effects =
      {
        {
          type = "train-braking-force-bonus",
          modifier = 0.2
        }
      },
      prerequisites = {"braking-force-15", "kr-singularity-tech-card"},
      unit =
      {
      count_formula = "1.5^(L-7)*800",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { krastorio.optimization_tech_card_name, 1 },
        { "matter-tech-card", 1 },
        { "advanced-tech-card", 1 },
        { "singularity-tech-card", 1 },
      },
        time = 60
      },
    max_level = "infinite",
    upgrade = true,
    order = "b-f-a"
    },
	
	
	
	
    })
  end
  
  --Robot storage
  if settings.startup["worker-robots-storage"].value == true then
    data.raw.technology["worker-robots-storage-4"].max_level = 6
	
data:extend({
  {
    type = "technology",
    name = "worker-robots-storage-7",
    icon = "__More_lategame_research__/graphics//capacity.png",
    icon_size = 128,
    prerequisites = {"worker-robots-storage-6", "kr-advanced-tech-card"},
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    unit =
    {
      count_formula = "1.5^(L-4)*800",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { krastorio.optimization_tech_card_name, 1 },
        { "matter-tech-card", 1 },
        { "advanced-tech-card", 1 },
      },
      time = 60
    },
    max_level = "10",
    upgrade = true,
    order = "c-k-f-e"
  },
  
  {
    type = "technology",
    name = "worker-robots-storage-11",
    icon = "__More_lategame_research__/graphics//capacity.png",
    icon_size = 128,
    prerequisites = {"worker-robots-storage-10", "kr-singularity-tech-card"},
    effects =
    {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    unit =
    {
      count_formula = "1.5^(L-4)*800",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { krastorio.optimization_tech_card_name, 1 },
        { "matter-tech-card", 1 },
        { "advanced-tech-card", 1 },
        { "singularity-tech-card", 1 },
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "c-k-f-e"
  },
  
})
	
  end
  
  --Weapon shooting speed
  if settings.startup["weapon-shooting-speed"].value == true then
    data.raw.technology["weapon-shooting-speed-7"].max_level = 10
	
data:extend({
 {
    type = "technology",
    name = "weapon-shooting-speed-11",
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
    prerequisites = {"weapon-shooting-speed-10", "kr-advanced-tech-card"},
    unit =
    {
      count_formula = "2^(L-6)*1000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { krastorio.optimization_tech_card_name, 1 },
        { "matter-tech-card", 1 },
        { "advanced-tech-card", 1 },
      },
      time = 60
    },
	max_level = "15",
    upgrade = true,
    order = "e-l-f"
  },
  
  
   {
    type = "technology",
    name = "weapon-shooting-speed-16",
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
    prerequisites = {"weapon-shooting-speed-15", "kr-singularity-tech-card"},
    unit =
    {
      count_formula = "2^(L-6)*1000",
      ingredients = {
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { krastorio.optimization_tech_card_name, 1 },
        { "matter-tech-card", 1 },
        { "advanced-tech-card", 1 },
		{ "singularity-tech-card", 1 },
      },
      time = 60
    },
	max_level = "infinite",
    upgrade = true,
    order = "e-l-f"
  },
})
	
  end
  
  --inserter stack
  if settings.startup["inserter-capacity-bonus"].value == true then
    data.raw.technology["inserter-capacity-bonus-8"].max_level = 10
	
data:extend({
  {
            type = "technology",
            name = "inserter-capacity-bonus-11",
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
            prerequisites = {"inserter-capacity-bonus-10", "kr-advanced-tech-card"},
            unit =
            {
                count_formula = "1.5^(L-8)*1000",
                ingredients = {
					{ "production-science-pack", 1 },
					{ "utility-science-pack", 1 },
					{ krastorio.optimization_tech_card_name, 1 },
					{ "matter-tech-card", 1 },
					{ "advanced-tech-card", 1 },
				},
                time = 60
            },
            max_level = "15",
            upgrade = true,
            order = "c-o-i"
  },
  {
            type = "technology",
            name = "inserter-capacity-bonus-16",
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
            prerequisites = {"inserter-capacity-bonus-15", "kr-singularity-tech-card"},
            unit =
            {
                count_formula = "1.5^(L-8)*1000",
                ingredients = {
					{ "production-science-pack", 1 },
					{ "utility-science-pack", 1 },
					{ krastorio.optimization_tech_card_name, 1 },
					{ "matter-tech-card", 1 },
					{ "advanced-tech-card", 1 },
					{ "singularity-tech-card", 1 },
				},
                time = 60
            },
            max_level = "infinite",
            upgrade = true,
            order = "c-o-i"
  },
})
	
  end
  
  -- robot battery
  if settings.startup["worker-robot-battery"].value == true then
    data.raw.technology["worker-robot-battery-12"].max_level = 14
	
data:extend({
  {
    type = "technology",
    name = "worker-robot-battery-15",
    icon = "__More_lategame_research__/graphics/worker-robot-battery.png",
    icon_size = 128,
    effects =
    {
      {
        type = "worker-robot-battery",
        modifier = 0.05
      }
    },
    prerequisites = {"worker-robot-battery-14", "kr-advanced-tech-card"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = {
		{ "production-science-pack", 1 },
		{ "utility-science-pack", 1 },
		{ krastorio.optimization_tech_card_name, 1 },
		{ "matter-tech-card", 1 },
		{ "advanced-tech-card", 1 },
	  },
      time = 60
    },
    upgrade = true,
    max_level = "16",
    order = "c-k-h-e"
  },
  
  {
    type = "technology",
    name = "worker-robot-battery-17",
    icon = "__More_lategame_research__/graphics/worker-robot-battery.png",
    icon_size = 128,
    effects =
    {
      {
        type = "worker-robot-battery",
        modifier = 0.05
      }
    },
    prerequisites = {"worker-robot-battery-16", "kr-singularity-tech-card"},
    unit =
    {
      count_formula = "L*L*50",
      ingredients = {
		{ "production-science-pack", 1 },
		{ "utility-science-pack", 1 },
		{ krastorio.optimization_tech_card_name, 1 },
		{ "matter-tech-card", 1 },
		{ "advanced-tech-card", 1 },
		{ "singularity-tech-card", 1 },
	  },
      time = 60
    },
    upgrade = true,
    max_level = "infinite",
    order = "c-k-h-e"
  },
  
})
	
  end
  
  --Follower lifetime
  if settings.startup["follower-robot-lifetime"].value == true then
    data.raw.technology["follower-robot-lifetime-4"].max_level = 6
	
data:extend({

{
    type = "technology",
    name = "follower-robot-lifetime-7",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/follower.png",
    effects =
    {
      {
        type = "follower-robot-lifetime",
        modifier = 0.1
      }
    },
    prerequisites = {"follower-robot-lifetime-6", "kr-advanced-tech-card"},
    unit =
    {
      count_formula = "L*L*50",
       ingredients = {
		{ "production-science-pack", 1 },
		{ "utility-science-pack", 1 },
		{ krastorio.optimization_tech_card_name, 1 },
		{ "matter-tech-card", 1 },
		{ "advanced-tech-card", 1 },
	   },
      time = 60
    },
    upgrade = true,
    max_level = "10",
    order = "c-k-f-f"
  },
  
{
    type = "technology",
    name = "follower-robot-lifetime-11",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/follower.png",
    effects =
    {
      {
        type = "follower-robot-lifetime",
        modifier = 0.1
      }
    },
    prerequisites = {"follower-robot-lifetime-10", "kr-singularity-tech-card"},
    unit =
    {
      count_formula = "L*L*50",
       ingredients = {
		{ "production-science-pack", 1 },
		{ "utility-science-pack", 1 },
		{ krastorio.optimization_tech_card_name, 1 },
		{ "matter-tech-card", 1 },
		{ "advanced-tech-card", 1 },
		{ "singularity-tech-card", 1 },
	   },
      time = 60
    },
    upgrade = true,
    max_level = "infinite",
    order = "c-k-f-f"
  },
  
})
	
  end
  
  --Lab Speed
  if settings.startup["research-speed"].value == true then
    data.raw.technology["research-speed-7"].max_level = 10
	
data:extend({
	{
	  type = "technology",
	  name = "research-speed-11",
	  icon_size = 256,
	  icon = "__base__/graphics/technology/research-speed.png",
	  effects =
	  {
		{
		  type = "laboratory-speed",
		  modifier = 0.05
		}
	  },
	  prerequisites = {"research-speed-10", "kr-advanced-tech-card"},
	  unit =
	  {
	 	count_formula = "2^(L-7)*1000",
		ingredients = {
			{ "production-science-pack", 1 },
			{ "utility-science-pack", 1 },
			{ krastorio.optimization_tech_card_name, 1 },
			{ "matter-tech-card", 1 },
			{ "advanced-tech-card", 1 },
		},
		time = 60
	  },
	  upgrade = true,
	  max_level = "15",
	  order = "c-m-d"
	},
	
	{
	  type = "technology",
	  name = "research-speed-16",
	  icon_size = 256,
	  icon = "__base__/graphics/technology/research-speed.png",
	  effects =
	  {
		{
		  type = "laboratory-speed",
		  modifier = 0.05
		}
	  },
	  prerequisites = {"research-speed-15", "kr-singularity-tech-card"},
	  unit =
	  {
	 	count_formula = "2^(L-7)*1000",
		ingredients = {
			{ "production-science-pack", 1 },
			{ "utility-science-pack", 1 },
			{ krastorio.optimization_tech_card_name, 1 },
			{ "matter-tech-card", 1 },
			{ "advanced-tech-card", 1 },
			{ "singularity-tech-card", 1 },
		},
		time = 60
	  },
	  upgrade = true,
	  max_level = "infinite",
	  order = "c-m-d"
	},
	
})
	
  end
  
  --Lab prod
  if settings.startup["laboratory-productivity"].value == true then
    data.raw.technology["laboratory-productivity-5"].max_level = 7
	
data:extend({
  {
    type = "technology",
    name = "laboratory-productivity-8",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/lab-product-tech.png",
    effects =
    {
      {
        type = "laboratory-productivity",
        modifier = 0.02
      }
    },
    prerequisites = {"laboratory-productivity-7", "kr-advanced-tech-card"},
    unit =
    {
      count_formula = "2^(L-5)*1500",
      ingredients = {
			{ "production-science-pack", 1 },
			{ "utility-science-pack", 1 },
			{ krastorio.optimization_tech_card_name, 1 },
			{ "matter-tech-card", 1 },
			{ "advanced-tech-card", 1 },
	  },
      time = 60
    },
    upgrade = true,
    max_level = "10",
    order = "c-k-f-f"
  },
  
  {
    type = "technology",
    name = "laboratory-productivity-11",
    icon_size = 128,
    icon = "__More_lategame_research__/graphics/lab-product-tech.png",
    effects =
    {
      {
        type = "laboratory-productivity",
        modifier = 0.02
      }
    },
    prerequisites = {"laboratory-productivity-10", "kr-singularity-tech-card"},
    unit =
    {
      count_formula = "2^(L-5)*1500",
      ingredients = {
			{ "production-science-pack", 1 },
			{ "utility-science-pack", 1 },
			{ krastorio.optimization_tech_card_name, 1 },
			{ "matter-tech-card", 1 },
			{ "advanced-tech-card", 1 },
			{ "singularity-tech-card", 1 },
	  },
      time = 60
    },
    upgrade = true,
    max_level = "infinite",
    order = "c-k-f-f"
  },
  

  
})
	
  end

end