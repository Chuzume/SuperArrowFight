#> asset:object/projectile.normal_arrow/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 着弾すると壊れる
    execute if data entity @s {inGround:true} run function asset:object/projectile.normal_arrow/tick/break
