#> asset:object/projectile.napalm_arrow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/projectile.napalm_arrow/tick

# 刺さっていると起爆処理が進む
    execute if data entity @s {inGround:true} run function asset:object/projectile.napalm_arrow/tick/stuck
