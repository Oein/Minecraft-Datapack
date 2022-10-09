execute as @s at @s if block ^ ^ ^1 air run tag @s add ok_to_dash
execute as @s at @s if block ^ ^ ^1 light run tag @s add ok_to_dash
execute as @s at @s if block ^ ^ ^1 barrier run tag @s add ok_to_dash

execute unless entity @e[tag=ok_to_dash] as @s at @s if block ^ ^ ^2.5 air run tag @s add ok_to_dash2
execute unless entity @e[tag=ok_to_dash] as @s at @s if block ^ ^ ^2.5 light run tag @s add ok_to_dash2
execute unless entity @e[tag=ok_to_dash] as @s at @s if block ^ ^ ^2.5 barrier run tag @s add ok_to_dash2

execute if entity @e[tag=ok_to_dash2] run scoreboard players remove @s dash_for_i 4

execute as @e[tag=ok_to_dash] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=ok_to_dash2] at @s run tp @s ^ ^ ^2.5

tag @e[tag=ok_to_dash] remove ok_to_dash
tag @e[tag=ok_to_dash2] remove ok_to_dash2