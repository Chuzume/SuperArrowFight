#> asset:object/button_map_generate/tick/generate_map.m
#
# 
#
# @within function asset:object/button_map_generate/tick/

# 生成する
    $place template map:$(MapID) 495 100 581 180
    $place template map:$(MapID) 505 100 533

# アイテム削除
    execute positioned 468 99 533 run kill @e[type=item,dx=64,dy=32,dz=49]

# リセット
    data remove entity @s interaction
