# gun_calc/type     = gun type
# gun_calc/dmg      = result
# gun_calc/distance = distance between shooter and getter

# maxDistance gun_calc

tag @s add shooter

execute as @s run function b_datapack:guns/gun_src/get_distance

playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 5 1 0
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 5 1.5 0
playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 5 2 0
playsound minecraft:block.anvil.hit master @a ~ ~ ~ 5 0 0
playsound minecraft:block.anvil.fall master @a ~ ~ ~ 5 0 0

scoreboard players set fori gun_calc 2
scoreboard players operation fori gun_calc *= maxDistance gun_calc

execute as @s at @s run function b_datapack:guns/gun_src/shoot_for/for

kill @e[tag=DTP_ARM]

tag @s remove shooter