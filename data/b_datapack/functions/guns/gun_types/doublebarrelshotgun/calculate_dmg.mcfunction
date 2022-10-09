
########### score description ###########
# [gun name]_[maxBullet | maxDistance | maxDamage]
# gun_calc/type     = gun type
# gun_calc/dmg      = result
# gun_calc/distance = distance between shooter and getter
#########################################

scoreboard players operation dmg gun_calc = shotgun_maxDamage gun_type

scoreboard players operation tmp__ gun_calc = shotgun_maxDistance gun_type
scoreboard players operation tmp__ gun_calc -= distance gun_calc
scoreboard players operation dmg gun_calc *= tmp__ gun_calc
scoreboard players operation dmg gun_calc /= shotgun_maxDistance gun_type