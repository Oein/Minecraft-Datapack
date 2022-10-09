execute as @a at @s run scoreboard players add @s sneak 0
execute as @a at @s run execute as @s at @s unless score @s sneak > @s old_sneak run tag @s add notSneak
execute as @a at @s run scoreboard players operation @s old_sneak = @s sneak
execute as @a[tag=notSneak] run scoreboard players set @s sneak 0
execute as @a[tag=notSneak] at @s run scoreboard players set @s old_sneak 0
tag @a[tag=notSneak] remove notSneak