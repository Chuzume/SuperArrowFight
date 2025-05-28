#> world_manager:event/game/on_game/out_of_bound/
#
# 
#
# @within function world_manager:event/game/on_game/tick

# 大ダメージ！
    # Y82以下だと水没！ 
        execute if predicate world_manager:area/battle_field/water run function world_manager:event/game/on_game/out_of_bound/water
    # そうでないなら魔法！
        execute unless predicate world_manager:area/battle_field/water run function world_manager:event/game/on_game/out_of_bound/water
