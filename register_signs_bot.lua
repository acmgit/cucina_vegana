function cucina_vegana.register_signs_bot(pname, step)
	local fp = signs_bot.register_farming_plant
	local mname = cucina_vegana.modname
	
	fp("cucina_vegana:" .. mname, "cucina_vegana:" .. "_1", "cucina_vegana:" .. "_" .. step)
end
