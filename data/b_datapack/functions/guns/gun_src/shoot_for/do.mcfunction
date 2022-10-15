# Move
execute as @e[tag=latest_bullet] at @s run summon area_effect_cloud ^ ^ ^0.501 {Tags:[DTP_ARM , armor_for_face], NoGravity: 1b, Duration: 4000}
execute as @e[tag=latest_bullet] at @s run summon area_effect_cloud ^ ^ ^0.5 {Tags:[DTP_ARM , armor_for_bullet , latest_bullet_tmp], NoGravity: 1b, Duration: 4000}
execute as @e[tag=armor_for_bullet] at @s facing entity @e[sort=nearest,tag=armor_for_face,limit=1] feet run tp @s ~ ~ ~ ~ ~
kill @e[tag=armor_for_face]

tag @e[tag=latest_bullet] remove latest_bullet
tag @e[tag=latest_bullet_tmp] add latest_bullet
tag @e[tag=latest_bullet_tmp] remove latest_bullet_tmp


execute as @e[tag=latest_bullet] at @s unless block ~ ~ ~ air run execute as @e[tag=latest_bullet] at @s run scoreboard players set ableToGo gun_calc 0

# Damage To People

execute as @e[tag=latest_bullet] at @s positioned ~ ~-1.75 ~ run execute as @e[type=!area_effect_cloud,tag=!shooter,tag=!shootedAlr,distance=0..0.5] run tag @s add shooted
execute as @e[tag=latest_bullet] at @s positioned ~ ~0.25 ~ positioned ~ ~-1.75 ~ run execute as @e[type=!area_effect_cloud,tag=!shooter,tag=!shootedAlr,distance=0..0.5] run tag @s add shooted
execute as @e[tag=latest_bullet] at @s positioned ~ ~0.50 ~ positioned ~ ~-1.75 ~ run execute as @e[type=!area_effect_cloud,tag=!shooter,tag=!shootedAlr,distance=0..0.5] run tag @s add shooted
execute as @e[tag=latest_bullet] at @s positioned ~ ~0.75 ~ positioned ~ ~-1.75 ~ run execute as @e[type=!area_effect_cloud,tag=!shooter,tag=!shootedAlr,distance=0..0.5] run tag @s add shooted
execute as @e[tag=latest_bullet] at @s positioned ~ ~1.00 ~ positioned ~ ~-1.75 ~ run execute as @e[type=!area_effect_cloud,tag=!shooter,tag=!shootedAlr,distance=0..0.5] run tag @s add shooted
execute as @e[tag=latest_bullet] at @s positioned ~ ~1.25 ~ positioned ~ ~-1.75 ~ run execute as @e[type=!area_effect_cloud,tag=!shooter,tag=!shootedAlr,distance=0..0.5] run tag @s add shooted
execute as @e[tag=latest_bullet] at @s positioned ~ ~1.50 ~ positioned ~ ~-1.75 ~ run execute as @e[type=!area_effect_cloud,tag=!shooter,tag=!shootedAlr,distance=0..0.5] run tag @s add shooted
execute as @e[tag=latest_bullet] at @s positioned ~ ~1.75 ~ positioned ~ ~-1.75 ~ run execute as @e[type=!area_effect_cloud,tag=!shooter,tag=!shootedAlr,distance=0..0.5] run tag @s add shooted

scoreboard players set distance gun_calc 2
scoreboard players operation distance gun_calc *= maxDistance gun_calc
scoreboard players operation distance gun_calc -= fori gun_calc
scoreboard players operation distance gun_calc /= 2 gun_calc

function b_datapack:guns/gun_src/get_damage
 
execute as @e[tag=shooted] at @s run scoreboard players operation @s hp_dmg = dmg gun_calc

execute if entity @e[tag=shooted] run tellraw @a [{"selector":"@s","color":"yellow"} , {"text": " Damaged ","color": "red"},{"bold": true,"color": "red","score":{"name": "dmg","objective": "gun_calc"}},{"text":" to ","color": "#00aaff"},{"color": "green", "selector":"@e[tag=shooted]"}]

tag @e[tag=shooted] add shootedAlr
tag @e[tag=shooted] remove shooted

# particle
execute as @e[tag=latest_bullet] at @s run particle smoke ~-0.2 ~-0.2 ~-0.2 0.4 0.4 0.4 0.01 3 force