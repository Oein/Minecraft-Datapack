execute as @a[tag=reloading] run scoreboard players remove @s reloadLeft 1
execute as @a[tag=reloading] if score @s reloadLeft matches ..0 run scoreboard players operation @s bullet = @s reloadType
execute as @a[tag=reloading] if score @s reloadLeft matches ..0 run tag @s remove reloading