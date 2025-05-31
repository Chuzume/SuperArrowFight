#> asset:object/projectile.napalm_arrow/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 刺さっていると起爆処理が進む
    execute if data entity @s {inGround:true} run function asset:object/projectile.napalm_arrow/tick/stuck
