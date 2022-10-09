# What we have to Change?
# `useShotGun`                 -> `your own tag`
# `reloadShotGun`              -> `your own tag`
# `Shot Gun`                -> `your own gun name`
# `shotgun_maxBullet`          -> `your own bullet max count player name`
# `lastUsedGunType matches 4` -> `lastUsedGunType matches [your gun index]`
# `type gun_calc 4`           -> `type gun_calc [your gun index]`
# `type_ gun_calc 4`          -> `type_ gun_calc [your gun index]`
# `reloadType 4`              -> `reloadType [your gun idx]`
# `reloadLeft 70`             -> `reloadLeft [reload tick]`
# `betweenT 5`                -> `betweenT [wait ticks between shoot and shoot]`

# [Change] tag , nbt tag
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name: "[{\"text\":\"Shot Gun\"}]"}}}}] run tag @s add useShotGun
execute as @a[nbt={Inventory:[{Slot: -106b, id:"minecraft:carrot_on_a_stick",tag:{display:{Name: "[{\"text\":\"Shot Gun\"}]"}}}]}] run tag @s add reloadShotGun


# [Change] tag , title , scoreboard name
execute as @a[tag=useShotGun,tag=!reloading] run title @s actionbar ["Now you are using " , {"bold": true,"text": "Shot Gun"},"   [",{"score":{"name": "@s","objective": "bullet"},"color": "#00aaff"},"/" , {"score":{"name": "shotgun_maxBullet","objective": "gun_type"},"color": "#ffff55"} , "]"]
execute as @a[tag=useShotGun,tag=reloading] run title @s actionbar ["Now you are using " , {"bold": true,"text": "Shot Gun"},"   [Reloading... ",{"score":{"name": "@s","objective": "reloadLeft"},"color": "green"},{"text":"t","color": "#ffff55"}," Left]"]


# [Change] gun type , tag
execute as @e[tag=useShotGun,tag=reloading] at @s unless score @s lastUsedGunType matches 4 run tag @s remove reloading
execute as @e[tag=useShotGun] at @s unless score @s lastUsedGunType matches 4 run tag @s add bulletReset


# [Change] gun type
scoreboard players set type gun_calc 4
scoreboard players set type_ gun_calc 4


execute as @e[tag=bulletReset] at @s run function b_datapack:guns/gun_types/bullet_reset

# [Change] tag
execute as @a[tag=useShotGun,tag=!reloading] at @s run execute if score @s click matches 1.. if score @s bullet matches 1.. if score @s betweenT matches 0 as @s at @s run tag @s add shootReq
execute as @a[tag=useShotGun,tag=reloading] at @s if score @s click matches 1.. run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5
execute as @a[tag=useShotGun,tag=!reloading] at @s if score @s click matches 1.. if score @s bullet matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5

execute as @a[tag=shootReq] at @s run function b_datapack:guns/gun_src/shoot
execute as @a[tag=shootReq] at @s run scoreboard players remove @s click 1
execute as @a[tag=shootReq] at @s run scoreboard players remove @s bullet 1
execute as @a[tag=shootReq] at @s run execute as @s run scoreboard players set @s betweenT 5
tag @a[tag=shootReq] remove shootReq

# [Change] tag
tag @a[tag=useShotGun] remove useShotGun

execute as @a[tag=reloadShotGun] at @s run scoreboard players operation @s reloadType = shotgun_maxBullet gun_type
execute as @a[tag=reloadShotGun] at @s run execute as @s run scoreboard players set @s reloadLeft 70
execute as @a[tag=reloadShotGun] at @s run function b_datapack:guns/gun_src/reload/start
execute as @a[tag=reloadShotGun] at @s run function b_datapack:guns/gun_types/give
execute as @a[tag=reloadShotGun] at @s run item replace entity @s weapon.offhand with air

execute as @a[tag=reloadShotGun] at @s run tag @s remove reloadShotGun