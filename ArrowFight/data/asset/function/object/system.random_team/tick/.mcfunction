#> asset:object/system.random_team/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 触れられると発動
    execute unless data storage world_manager: Game{Active:true} if data entity @s interaction run function asset:object/system.random_team/tick/active

# 触れても動かないぞ
    execute if data storage world_manager: Game{Active:true} if data entity @s interaction run function asset:object/system.random_team/tick/fail

# リセット
    execute if data entity @s interaction run data remove entity @s interaction
