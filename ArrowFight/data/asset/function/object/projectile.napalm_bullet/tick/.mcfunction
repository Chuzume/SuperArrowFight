#> asset:object/projectile.napalm_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# パーティクル
    particle minecraft:crit ~ ~ ~ 0 0 0 0.05 1 force @a[distance=..32]
    particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]

# Super
    function asset:object/super.tick
