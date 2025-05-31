#> asset:object/projectile.meteor_rain_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# パーティクル
    particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..64]
    particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0.01 5 force @a[distance=..64]

# Super
    function asset:object/super.tick
