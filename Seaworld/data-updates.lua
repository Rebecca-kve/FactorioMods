require("prototypes.updates")

enable_productivity_recipes = {
"sand-from-water",
"heavy-oil-production",
"mineral-water-production",
"raw-imersite-production",
"flake-graphite-extraction",
"raw-rare-metals-extraction",
"titanium-extraction",
"wolframite-extraction",
"uranium-extraction",
"Stone-from-black-reinforced-plate",
"Stone-from-white-reinforced-plate",
"zircon-production",
"aluminum-ore-production",
"lead-ore-production",
"iron-ore-production",
"copper-ore-production",
"basic-extraction",
"advanced-extraction",
"stone-washing",
"crude-oil-production",
"crude-oil-production-2",
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
