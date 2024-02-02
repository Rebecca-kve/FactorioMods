  for i, v in pairs(data.raw["inserter"]) do
    v.extension_speed = v.extension_speed * 3
    v.rotation_speed = v.rotation_speed * 3
  end
--[[for _, v in pairs(data.raw.character) do
	if v.crafting_categories then
	  table.insert(v.crafting_categories, "crafting-handonly")
	end
end ]]