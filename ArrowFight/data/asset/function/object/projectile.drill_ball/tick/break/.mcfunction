#> asset:object/projectile.drill_ball/tick/break/
#
# 
#
# @within function asset:object/projectile.drill_ball/tick/

# 周りを壊す。雪玉の進行方向に実行される。
    execute on vehicle at @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s positioned ^ ^ ^3 run function asset:object/projectile.drill_ball/tick/break/dig_block
