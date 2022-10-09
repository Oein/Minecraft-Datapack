execute as @s at @s if score fori gun_calc matches 1.. run function b_datapack:guns/gun_src/shoot_for/do
execute as @s at @s if score fori gun_calc matches 1.. run scoreboard players remove fori gun_calc 1
execute as @s at @s if score fori gun_calc matches 1.. if score ableToGo gun_calc matches 1 run function b_datapack:guns/gun_src/shoot_for/fori