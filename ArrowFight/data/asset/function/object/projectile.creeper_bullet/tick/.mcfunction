#> asset:object/projectile.creeper_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/projectile.creeper_bullet/tick

# パーティクル
    particle entity_effect{color:[0.5,1.0,0.5,1.00]} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a[distance=..64]
    particle entity_effect{color:[0.0,0.7,0.0,1.00]} ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]

# Super
    function asset:object/super.tick
