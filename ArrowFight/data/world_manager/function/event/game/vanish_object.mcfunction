#> world_manager:event/game/vanish_object
#
# 対象のものを消す
#
# @within function 
#   world_manager:event/game/tick
#   world_manager:event/game/end_game/setdata

# 演出一応つけとく？
    particle minecraft:poof ~ ~ ~ 0 0 0 0.1 3 force @a[distance=..64]

# 奈落へGO!
    tp @s ~ -128 ~

# 上と自分をキル
    execute on passengers run kill @s
    kill @s
