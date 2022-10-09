# In this function, it calls gun observers
function b_datapack:guns/gun_types/sample/tick
function b_datapack:guns/gun_types/rifle/tick
function b_datapack:guns/gun_types/machinegun/tick
function b_datapack:guns/gun_types/shotgun/tick
function b_datapack:guns/gun_types/doublebarrelshotgun/tick
function b_datapack:guns/gun_types/revolver/tick

execute as @a if score @s betweenT matches 1.. run scoreboard players remove @s betweenT 1