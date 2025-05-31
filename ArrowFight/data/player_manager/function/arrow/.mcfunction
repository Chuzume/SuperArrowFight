#> player_manager:arrow/
#
# 
#
# @within function core:handler/use_bow

# 周囲の矢にコマンドを実行させる
    execute as @e[type=#minecraft:arrows,tag=!AssetObject,distance=..8] at @s run function player_manager:arrow/convert/
