-- inv_seed is the seed inventory name
-- plantlet is what has to be placed on the ground (stage 1)
-- crop is the farming crop in the final stage
-- function signs_bot.register_farming_plant(inv_seed, plantlet, crop)

function cucina_vegana.register_signs_bot(pname, start, steps)
	local fp = signs_bot.register_farming_plant
	local mname = cucina_vegana.modname

    if(cucina_vegana.farming_default) then
        fp("cucina_vegana:seed_" .. pname, "cucina_vegana:" .. pname .. "_" .. start, "cucina_vegana:" .. pname .. "_" .. steps)
        
    else
        fp("cucina_vegana:" .. pname .. "_seed", "cucina_vegana:" .. pname .. "_" .. start, "cucina_vegana:" .. pname .. "_" .. steps)
        
    end
    
end
