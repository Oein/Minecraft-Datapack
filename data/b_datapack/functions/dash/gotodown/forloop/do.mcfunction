execute as @e[tag=downdowndown] at @s run tp @s ~ ~-1 ~
execute as @e[tag=downdowndown] at @s run particle minecraft:cloud ~-0.5 ~ ~-0.5 1 0 1 0.00001 100 force

tag @e[tag=downdowndown] remove downdowndown

execute as @s at @s run function b_datapack:dash/gotodown/forloop/for