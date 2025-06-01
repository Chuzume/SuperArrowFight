#> world_manager:event/generate_map/
#
# 
#
# @within function world_manager:event/tick

# 一旦全部消す
    fill 531 129 533 469 100 580 air

# 生成する
    $place template map:$(MapID) 495 100 581 180
    $place template map:$(MapID) 505 100 533

# ワールド側に現在のマップデータを指定する
    $data modify storage world_manager: Game.LoadedMap set value $(MapID)

# 鉱石生成
    function world_manager:event/generate_map/ore/
    #function world_manager:event/generate_map/ore/
    #function world_manager:event/generate_map/ore/
    
# アイテム削除
    execute positioned 468 99 533 run kill @e[type=item,distance=..128,predicate=world_manager:area/battle_field/kill_object]

# リセット
    data remove storage world_manager: GenerateMap
