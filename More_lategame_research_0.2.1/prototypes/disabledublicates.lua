if mods["boblogistics"] then
	overwrite_setting('bool-setting', 'worker-robots-storage', 'false')
	overwrite_setting('bool-setting', 'inserter-capacity-bonus', 'false')
end

if mods["Seperated_And_Infinite_InserterCapacity_Research"] then
	overwrite_setting('bool-setting', 'inserter-capacity-bonus', 'false')
end

if mods["Robot_Battery_Research"] then
	overwrite_setting('bool-setting', 'worker-robot-battery', 'false')
end

if mods["train_tech"] then
	overwrite_setting('bool-setting', 'braking-force', 'false')
end
