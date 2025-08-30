#> core:tick/player/regeneration/re_active
#
# 再発動
#
# @within function core:tick/player/

effect give @s regeneration infinite 0 true
scoreboard players reset @s StopRegeneration
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 0 10 force @a[distance=..32]
playsound minecraft:entity.villager.work_cleric player @a ~ ~ ~ 0.2 2
