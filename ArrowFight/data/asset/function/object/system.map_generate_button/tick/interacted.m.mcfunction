#> asset:object/system.map_generate_button/tick/interacted.m
#
# 
#
# @within function asset:object/system.map_generate_button/tick/

# 自分の持ってるフィールドをワールド側に渡し、マップを生成する
    data modify storage world_manager: Game.LoadedMapID set from storage asset:context this.MapID
    data modify storage world_manager: GenerateMap.MapID set from storage asset:context this.MapID
    data modify storage world_manager: GenerateMap.Active set value true

# リセット
    data remove entity @s interaction
