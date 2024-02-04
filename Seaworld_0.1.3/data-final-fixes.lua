
local inserterspeed = settings.startup["inserter-speed"].value
if inserterspeed > 0 then
  for i, v in pairs(data.raw["inserter"]) do
	v.extension_speed = v.extension_speed * inserterspeed
	v.rotation_speed = v.rotation_speed * inserterspeed
  end
end
--[[for _, v in pairs(data.raw.character) do
	if v.crafting_categories then
	  table.insert(v.crafting_categories, "crafting-handonly")
	end
end ]]