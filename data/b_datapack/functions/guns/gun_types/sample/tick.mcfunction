# What we have to Change?
# `useSample`                 -> `your own tag`
# `reloadSample`              -> `your own tag`
# `Sample Gun`                -> `your own gun name`
# `sample_maxBullet`          -> `your own bullet max count player name`
# `lastUsedGunType matches 1` -> `lastUsedGunType matches [your gun index]`
# `type gun_calc 1`           -> `type gun_calc [your gun index]`
# `type_ gun_calc 1`          -> `type_ gun_calc [your gun index]`
# `reloadType 1`              -> `reloadType [your gun idx]`
# `reloadLeft 20`             -> `reloadLeft [reload tick]`
# `betweenT 0`                -> `betweenT [wait ticks between shoot and shoot]`

# [Change] tag , nbt tag
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name: "[{\"text\":\"Sample Gun\"}]"}}}}] run tag @s add useSample
execute as @a[nbt={Inventory:[{Slot: -106b, id:"minecraft:carrot_on_a_stick",tag:{display:{Name: "[{\"text\":\"Sample Gun\"}]"}}}]}] run tag @s add reloadSample


# [Change] tag , title , scoreboard name
execute as @a[tag=useSample,tag=!reloading] run title @s actionbar ["Now you are using " , {"bold": true,"text": "Sample Gun"},"   [",{"score":{"name": "@s","objective": "bullet"},"color": "#00aaff"},"/" , {"score":{"name": "sample_maxBullet","objective": "gun_type"},"color": "#ffff55"} , "]"]
execute as @a[tag=useSample,tag=reloading] run title @s actionbar ["Now you are using " , {"bold": true,"text": "Sample Gun"},"   [Reloading... ",{"score":{"name": "@s","objective": "reloadLeft"},"color": "green"},{"text":"t","color": "#ffff55"}," Left]"]


# [Change] gun type , tag
execute as @e[tag=useSample,tag=reloading] at @s unless score @s lastUsedGunType matches 1 run tag @s remove reloading
execute as @e[tag=useSample] at @s unless score @s lastUsedGunType matches 1 run tag @s add bulletReset


# [Change] gun type
scoreboard players set type gun_calc 1
scoreboard players set type_ gun_calc 1


execute as @e[tag=bulletReset] at @s run function b_datapack:guns/gun_types/bullet_reset

# [Change] tag
execute as @a[tag=useSample,tag=!reloading] at @s run execute if score @s click matches 1.. if score @s bullet matches 1.. if score @s betweenT matches 0 as @s at @s run tag @s add shootReq
execute as @a[tag=useSample,tag=reloading] at @s if score @s click matches 1.. run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5
execute as @a[tag=useSample,tag=!reloading] at @s if score @s click matches 1.. if score @s bullet matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5

execute as @a[tag=shootReq] at @s run function b_datapack:guns/gun_src/shoot
execute as @a[tag=shootReq] at @s run scoreboard players remove @s click 1
execute as @a[tag=shootReq] at @s run scoreboard players remove @s bullet 1
execute as @a[tag=shootReq] at @s run execute as @s run scoreboard players set @s betweenT 0
tag @a[tag=shootReq] remove shootReq

# [Change] tag
tag @a[tag=useSample] remove useSample

execute as @a[tag=reloadSample] at @s run scoreboard players operation @s reloadType = sample_maxBullet gun_type
execute as @a[tag=reloadSample] at @s run execute as @s run scoreboard players set @s reloadLeft 20
execute as @a[tag=reloadSample] at @s run function b_datapack:guns/gun_src/reload/start
execute as @a[tag=reloadSample] at @s run function b_datapack:guns/gun_types/give
execute as @a[tag=reloadSample] at @s run item replace entity @s weapon.offhand with air

execute as @a[tag=reloadSample] at @s run tag @s remove reloadSample