#> asset:object/projectile.netherify_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# パーティクル
    particle minecraft:portal ~ ~ ~ 0.2 0.2 0.2 0 10 force @a[distance=..64]
    particle entity_effect{color:[0.5,0.0,0.6,1.00]} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a[distance=..64]

# Super
    function asset:object/super.tick
