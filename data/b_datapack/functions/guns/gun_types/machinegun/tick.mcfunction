# What we have to Change?
# `useMachineGun`                 -> `your own tag`
# `reloadMachineGun`              -> `your own tag`
# `Machine Gun`                -> `your own gun name`
# `machinegun_maxBullet`          -> `your own bullet max count player name`
# `lastUsedGunType matches 3` -> `lastUsedGunType matches [your gun index]`
# `type gun_calc 3`           -> `type gun_calc [your gun index]`
# `type_ gun_calc 3`          -> `type_ gun_calc [your gun index]`
# `reloadType 3`              -> `reloadType [your gun idx]`
# `reloadLeft 200`             -> `reloadLeft [reload tick]`
# `betweenT 0`                -> `betweenT [wait ticks between shoot and shoot]`

# [Change] tag , nbt tag
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name: "[{\"text\":\"Machine Gun\"}]"}}}}] run tag @s add useMachineGun
execute as @a[nbt={Inventory:[{Slot: -106b, id:"minecraft:carrot_on_a_stick",tag:{display:{Name: "[{\"text\":\"Machine Gun\"}]"}}}]}] run tag @s add reloadMachineGun


# [Change] tag , title , scoreboard name
execute as @a[tag=useMachineGun,tag=!reloading] run title @s actionbar ["Now you are using " , {"bold": true,"text": "Machine Gun"},"   [",{"score":{"name": "@s","objective": "bullet"},"color": "#00aaff"},"/" , {"score":{"name": "machinegun_maxBullet","objective": "gun_type"},"color": "#ffff55"} , "]"]
execute as @a[tag=useMachineGun,tag=reloading] run title @s actionbar ["Now you are using " , {"bold": true,"text": "Machine Gun"},"   [Reloading... ",{"score":{"name": "@s","objective": "reloadLeft"},"color": "green"},{"text":"t","color": "#ffff55"}," Left]"]


# [Change] gun type , tag
execute as @e[tag=useMachineGun,tag=reloading] at @s unless score @s lastUsedGunType matches 3 run tag @s remove reloading
execute as @e[tag=useMachineGun] at @s unless score @s lastUsedGunType matches 3 run tag @s add bulletReset


# [Change] gun type
scoreboard players set type gun_calc 3
scoreboard players set type_ gun_calc 3


execute as @e[tag=bulletReset] at @s run function b_datapack:guns/gun_types/bullet_reset

# [Change] tag
execute as @a[tag=useMachineGun,tag=!reloading] at @s run execute if score @s click matches 1.. if score @s bullet matches 1.. if score @s betweenT matches 0 as @s at @s run tag @s add shootReq
execute as @a[tag=useMachineGun,tag=reloading] at @s if score @s click matches 1.. run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5
execute as @a[tag=useMachineGun,tag=!reloading] at @s if score @s click matches 1.. if score @s bullet matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5

execute as @a[tag=shootReq] at @s run function b_datapack:guns/gun_src/shoot
execute as @a[tag=shootReq] at @s run scoreboard players remove @s click 1
execute as @a[tag=shootReq] at @s run scoreboard players remove @s bullet 1
execute as @a[tag=shootReq] at @s run execute as @s run scoreboard players set @s betweenT 0
execute as @a[tag=shootReq] at @s run execute as @s at @s run tp @s ~ ~ ~ ~ ~-3
tag @a[tag=shootReq] remove shootReq

# [Change] tag
tag @a[tag=useMachineGun] remove useMachineGun

execute as @a[tag=reloadMachineGun] at @s run scoreboard players operation @s reloadType = machinegun_maxBullet gun_type
execute as @a[tag=reloadMachineGun] at @s run execute as @s run scoreboard players set @s reloadLeft 200
execute as @a[tag=reloadMachineGun] at @s run function b_datapack:guns/gun_src/reload/start
execute as @a[tag=reloadMachineGun] at @s run function b_datapack:guns/gun_types/give
execute as @a[tag=reloadMachineGun] at @s run item replace entity @s weapon.offhand with air

execute as @a[tag=reloadMachineGun] at @s run tag @s remove reloadMachineGun