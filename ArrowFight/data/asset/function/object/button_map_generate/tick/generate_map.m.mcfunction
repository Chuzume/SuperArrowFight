#> asset:object/button_map_generate/tick/generate_map.m
#
# 
#
# @within function asset:object/button_map_generate/tick/

# 一旦全部消す
    fill 531 129 533 469 100 580 air

# 生成する
    $place template map:$(MapID) 495 100 581 180
    $place template map:$(MapID) 505 100 533

# ワールド側に現在のマップデータを指定する
    $data modify storage world_manager: Game.LoadedMap set value $(MapID)

# 鉱石生成
    function asset:object/button_map_generate/tick/random_ores/
    function asset:object/button_map_generate/tick/random_ores/
    function asset:object/button_map_generate/tick/random_ores/
    
# アイテム削除
    execute positioned 468 99 533 run kill @e[type=item,dx=64,dy=32,dz=49]

# リセット
    data remove entity @s interaction
