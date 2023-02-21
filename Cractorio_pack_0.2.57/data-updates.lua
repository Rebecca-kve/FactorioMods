--if settings.startup["kr-cargo-wagon-bonus"].value != 0 then
local cargo_wagon_bonus = krastorio.general.getSafeSettingValue("kr-cargo-wagon-bonus")
if cargo_wagon_bonus and cargo_wagon_bonus ~= 0 then
	data.raw["fusion-cargo-wagon"]["fusion-cargo-wagon"].inventory_size += cargo_wagon_bonus
	data.raw["antimatter-cargo-wagon"]["antimatter-cargo-wagon"].inventory_size += cargo_wagon_bonus
end