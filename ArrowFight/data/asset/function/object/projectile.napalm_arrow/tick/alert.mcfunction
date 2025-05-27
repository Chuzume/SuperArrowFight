#> asset:object/projectile.napalm_arrow/tick/alert
#
# 予告動作
#
# @within function asset:object/projectile.napalm_arrow/tick/stuck

particle flame ~ ~ ~ 0 0 0 0.05 5 force @a[distance=..64]
particle crit ~ ~ ~ 0 0 0 0.5 3 force @a[distance=..64]
playsound minecraft:item.flintandsteel.use neutral @a ~ ~ ~ 1.5 1
