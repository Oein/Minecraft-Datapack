execute as @s at @s if block ~ ~-1 ~ air run tag @s add downdowndown
execute as @s at @s if block ~ ~-1 ~ light run tag @s add downdowndown
execute as @s at @s if entity @e[tag=downdowndown] run function b_datapack:dash/gotodown/forloop/do