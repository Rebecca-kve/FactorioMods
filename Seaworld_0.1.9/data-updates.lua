require("prototypes.recipes_updates")
require("prototypes.bzcompat")
require("prototypes.Planetfallcompat")

--[[

enable_productivity_recipes = {
  "ash",
}

for k, v in pairs(data.raw.module) do
  if v.name:find("productivity%-module") and v.limitation then
    for _, recipe in ipairs(enable_productivity_recipes) do
      if data.raw["recipe"][recipe] then
        table.insert(v.limitation, recipe)
      end
    end
  end
end

]]


