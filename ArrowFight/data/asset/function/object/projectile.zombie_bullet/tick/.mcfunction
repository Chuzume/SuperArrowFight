#> asset:object/projectile.zombie_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/projectile.zombie_bullet/tick

# パーティクル
    particle entity_effect{color:[0.3,0.48,0.21,1.00]} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a[distance=..64]
    particle entity_effect{color:[0.27,0.22,0.64,1.00]} ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]

# Super
    function asset:object/super.tick
