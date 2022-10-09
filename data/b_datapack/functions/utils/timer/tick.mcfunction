execute if score started timer matches 0 if score time timer matches 1.. run title @a title "Timer Started!"
execute if score started timer matches 0 if score time timer matches 1.. run scoreboard players set started timer 1
execute if score time timer matches 1.. run scoreboard players remove time timer 1
execute if score time timer matches 0 run function b_datapack:utils/timer/stop

scoreboard players operation sec timer = time timer
scoreboard players operation msec timer = time timer
scoreboard players operation sec timer /= 20 timer
scoreboard players operation msec timer %= 20 timer
scoreboard players operation msec timer *= 5 timer

bossbar set minecraft:timer players @a
bossbar set minecraft:timer name [{"color": "green","text": "Timer "} , {"text": "[ ","color": "white"},{"score":{"name": "sec","objective": "timer"}},".",{"score":{"name": "msec","objective": "timer"}}, {"text": " ]","color": "white"}]
execute if score msec timer matches 0..9 run bossbar set minecraft:timer name [{"color": "green","text": "Timer "} , {"text": "[ ","color": "white"},{"score":{"name": "sec","objective": "timer"}},".0",{"score":{"name": "msec","objective": "timer"}}, {"text": " ]","color": "white"}]
execute if score time timer matches -1 run bossbar set minecraft:timer name [{"color": "green","text": "Timer "} , {"text": "[ ","color": "white"},"Not Started", {"text": " ]","color": "white"}]