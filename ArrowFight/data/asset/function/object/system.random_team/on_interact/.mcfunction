#> asset:object/system.random_team/on_interact/
#
# 継承先などから実行される処理
#
# @within asset_manager:object/call_method/run_method.m

# 触れられると発動
    execute unless data storage world_manager: Game{Active:true} if data entity @s interaction run function asset:object/system.random_team/on_interact/success

# 触れても動かないぞ
    execute if data storage world_manager: Game{Active:true} if data entity @s interaction run function asset:object/system.random_team/on_interact/fail

# リセット
    execute if data entity @s interaction run data remove entity @s interaction
