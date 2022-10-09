execute as @a at @s run scoreboard players add @s click 0
execute as @a[nbt={SelectedItem:{tag:{display:{Name: "[{\"text\":\"Dash!\"}]"}}, id: "minecraft:carrot_on_a_stick"}}] at @s if score @s click matches 1.. run tag @s add dashed
execute as @a[nbt={SelectedItem:{tag:{display:{Name: "[{\"text\":\"Dash!\"}]"}}, id: "minecraft:carrot_on_a_stick"}}] at @s if score @s click matches 1.. run scoreboard players remove @s click 1
execute as @a[nbt={SelectedItem:{tag:{display:{Name: "[{\"text\":\"Dash!\"}]"}}, id: "minecraft:carrot_on_a_stick"}}] run title @s actionbar ["Now you are using " , {"bold": true,"text": "Dash!"}]
execute as @a[nbt={SelectedItem:{tag:{display:{Name: "[{\"text\":\"Dash!\"}]"}}, id: "minecraft:carrot_on_a_stick"}}] run function b_datapack:dash/show_tp_loc
execute as @a[tag=dashed] at @s run function b_datapack:dash/forloop/for
execute as @a[tag=dashed] at @s run particle minecraft:cloud ~-0.5 ~ ~-0.5 1 0 1 0.00001 100 force
execute as @a[tag=dashed] at @s run tag @s remove dashed
