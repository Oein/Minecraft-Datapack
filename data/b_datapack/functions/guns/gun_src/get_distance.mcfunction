# gun_calc/type     = gun type
# gun_calc/dmg      = result
# gun_calc/distance = distance between shooter and getter

execute if score type gun_calc matches 1 run scoreboard players operation maxDistance gun_calc = sample_maxDistance gun_type
execute if score type gun_calc matches 2 run scoreboard players operation maxDistance gun_calc = rifle_maxDistance gun_type
execute if score type gun_calc matches 3 run scoreboard players operation maxDistance gun_calc = machinegun_maxDistance gun_type
execute if score type gun_calc matches 4 run scoreboard players operation maxDistance gun_calc = shotgun_maxDistance gun_type
execute if score type gun_calc matches 5 run scoreboard players operation maxDistance gun_calc = doublebarrelshotgun_maxDistance gun_type
execute if score type gun_calc matches 6 run scoreboard players operation maxDistance gun_calc = revolver_maxDistance gun_type
