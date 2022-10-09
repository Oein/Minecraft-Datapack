# gun_calc/type     = gun type
# gun_calc/dmg      = result
# gun_calc/distance = distance between shooter and getter

execute if score type gun_calc matches 1 run function b_datapack:guns/gun_types/sample/calculate_dmg
execute if score type gun_calc matches 2 run function b_datapack:guns/gun_types/rifle/calculate_dmg
execute if score type gun_calc matches 3 run function b_datapack:guns/gun_types/machinegun/calculate_dmg
execute if score type gun_calc matches 4 run function b_datapack:guns/gun_types/shotgun/calculate_dmg
execute if score type gun_calc matches 5 run function b_datapack:guns/gun_types/doublebarrelshotgun/calculate_dmg
execute if score type gun_calc matches 6 run function b_datapack:guns/gun_types/revolver/calculate_dmg