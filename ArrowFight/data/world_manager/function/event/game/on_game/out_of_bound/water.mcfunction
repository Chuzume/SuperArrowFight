#> world_manager:event/game/on_game/out_of_bound/water
#
# 
#
# @within function world_manager:event/game/on_game/out_of_bound/

# 演出
    particle minecraft:splash ~ ~30 ~ 0.3 10 0.3 0 200 force @a[distance=..64]
    particle minecraft:dust{color:[0.4,0.6,1.0],scale:1.0} ~ ~30 ~ 0.2 10 0.2 0 100 force @a[distance=..64]
    playsound minecraft:entity.generic.swim player @a ~ ~ ~ 3 0.7
    playsound minecraft:entity.generic.splash player @a ~ ~ ~ 3 1

# キルログを水関連にするために、水没ダメージを与える
    damage @s 1000 minecraft:drown
