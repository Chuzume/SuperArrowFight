#> world_manager:event/tick
#
# 
#
# @within function core:tick/

# 試合Tick
    execute if data storage world_manager: Game{Active:true} positioned 499 114 557 run function world_manager:event/game/tick

# マップ生成
    execute if data storage world_manager: GenerateMap{Active:true} run function world_manager:event/generate_map/ with storage world_manager: GenerateMap

# エフェクト付与
    effect give @a minecraft:saturation infinite 10 true
