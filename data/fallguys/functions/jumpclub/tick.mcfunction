## DOWN

execute as @e[tag=MID] at @s run tp @s ~ ~ ~ ~-4 ~
execute as @e[tag=SPINWHEELSHULKER] at @s positioned ~ ~1 ~ run tp @a[distance=..1] ^-.4 ^.5 ^1
# 사람 tp용 entity
execute as @e[tag=SPINWHEELSHULKER] at @s run execute as @s at @s facing entity @e[tag=MID] feet run tp @s ~ ~ ~ ~107.11 ~
# Player에게 보여지는 Renderer를 정렬
execute as @e[tag=SPINWHEELSHULKER_Entity] at @s run tp @s ~ ~ ~ ~-107.11 ~

## DOWN BLOCKS

execute as @e[tag=MID] at @s run tp @e[tag=SWS0] ^ ^-1.5 ^
execute as @e[tag=MID] at @s run tp @e[tag=SWS1] ^ ^-1.5 ^1
execute as @e[tag=MID] at @s run tp @e[tag=SWS2] ^ ^-1.5 ^2
execute as @e[tag=MID] at @s run tp @e[tag=SWS3] ^ ^-1.5 ^3
execute as @e[tag=MID] at @s run tp @e[tag=SWS4] ^ ^-1.5 ^4
execute as @e[tag=MID] at @s run tp @e[tag=SWS5] ^ ^-1.5 ^5
execute as @e[tag=MID] at @s run tp @e[tag=SWS6] ^ ^-1.5 ^6
execute as @e[tag=MID] at @s run tp @e[tag=SWS7] ^ ^-1.5 ^7
execute as @e[tag=MID] at @s run tp @e[tag=SWS8] ^ ^-1.5 ^8
execute as @e[tag=MID] at @s run tp @e[tag=SWS9] ^ ^-1.5 ^9
execute as @e[tag=MID] at @s run tp @e[tag=SWS10] ^ ^-1.5 ^10
execute as @e[tag=MID] at @s run tp @e[tag=SWS11] ^ ^-1.5 ^11
execute as @e[tag=MID] at @s run tp @e[tag=SWS12] ^ ^-1.5 ^12
execute as @e[tag=MID] at @s run tp @e[tag=SWS13] ^ ^-1.5 ^13
execute as @e[tag=MID] at @s run tp @e[tag=SWS14] ^ ^-1.5 ^14
execute as @e[tag=MID] at @s run tp @e[tag=SWS15] ^ ^-1.5 ^15
execute as @e[tag=MID] at @s run tp @e[tag=SWS16] ^ ^-1.5 ^16
execute as @e[tag=MID] at @s run tp @e[tag=SWS17] ^ ^-1.5 ^17
execute as @e[tag=MID] at @s run tp @e[tag=SWS18] ^ ^-1.5 ^18
execute as @e[tag=MID] at @s run tp @e[tag=SWS19] ^ ^-1.5 ^19
execute as @e[tag=MID] at @s run tp @e[tag=SWS20] ^ ^-1.5 ^20

## INVISIBLE
execute as @e[tag=INVISIBLE] at @s run data merge entity @s {Invisible:1b}
execute as @e[tag=INVISIBLE] at @s run effect give @s invisibility 1 1 true

function fallguys:jumpclub/tick2