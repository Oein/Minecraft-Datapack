# databases
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add old_sneak dummy
scoreboard objectives add dash_for_i dummy
scoreboard objectives add gun_calc dummy
scoreboard objectives add gotodown dummy
scoreboard objectives add lastUsedGunType dummy
scoreboard objectives add bullet dummy
scoreboard objectives add reloadLeft dummy
scoreboard objectives add reloadType dummy
scoreboard objectives add betweenT dummy
scoreboard objectives add timer dummy

# # [gun name]_[maxBullet | maxDistance | maxDamage]
scoreboard objectives add gun_type dummy 

# env vars
scoreboard players set max_sneak sneak 61
scoreboard players set 2 gun_calc 2
scoreboard players set 20 timer 20
scoreboard players set 5 timer 5

# # set gun env vars
function b_datapack:guns/gun_types/load

bossbar add timer "timer"