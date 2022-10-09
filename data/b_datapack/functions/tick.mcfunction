# reset values
scoreboard players add @a click 0

# subprocesses
function b_datapack:dash/tick
function b_datapack:sneak_observer/tick
function b_datapack:guns/gun_types/tick
function b_datapack:guns/gun_src/reload/tick
function b_datapack:utils/timer/tick

execute as @a if score @s click matches 1.. run scoreboard players remove @s click 1
scoreboard players add @a betweenT 0
scoreboard players add started timer 0
scoreboard players add time timer 0