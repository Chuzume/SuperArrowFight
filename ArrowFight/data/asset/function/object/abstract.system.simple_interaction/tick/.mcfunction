#> asset:object/abstract.system.simple_interaction/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 触れられると発動
    execute if data entity @s interaction run function asset:object/call.m {method: on_interact}
