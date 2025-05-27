#> asset:object/projectile.normal_arrow/tick/break
#
# 着弾で壊れる
#
# @within function asset:object/projectile.normal_arrow/tick/

particle minecraft:crit ~ ~ ~ 0 0 0 1 10 force @a[distance=..64]
kill @s
