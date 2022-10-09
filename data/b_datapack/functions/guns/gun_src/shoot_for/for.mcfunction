execute as @s at @s positioned ~ ~1.75 ~ run summon area_effect_cloud ^ ^ ^0.101 {Tags:[DTP_ARM , armor_for_face], NoGravity: 1b, Duration: 4000}
execute as @s at @s positioned ~ ~1.75 ~ run summon area_effect_cloud ^ ^ ^0.1 {Tags:[DTP_ARM , armor_for_bullet , latest_bullet], NoGravity: 1b, Duration: 4000}
execute as @e[tag=armor_for_bullet] at @s facing entity @e[sort=nearest,tag=armor_for_face,limit=1] feet run tp @s ~ ~ ~ ~ ~
kill @e[tag=armor_for_face]

scoreboard players set ableToGo gun_calc 1
execute as @s at @s run function b_datapack:guns/gun_src/shoot_for/fori

tag @e[tag=shootedAlr] remove shootedAlr