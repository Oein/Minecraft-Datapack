# type/gun_calc = give gun type

execute if score type gun_calc matches 1 as @s at @s run function b_datapack:guns/gun_types/sample/give
execute if score type gun_calc matches 2 as @s at @s run function b_datapack:guns/gun_types/rifle/give
execute if score type gun_calc matches 3 as @s at @s run function b_datapack:guns/gun_types/machinegun/give
execute if score type gun_calc matches 4 as @s at @s run function b_datapack:guns/gun_types/shotgun/give
execute if score type gun_calc matches 5 as @s at @s run function b_datapack:guns/gun_types/doublebarrelshotgun/give
execute if score type gun_calc matches 6 as @s at @s run function b_datapack:guns/gun_types/revolver/give