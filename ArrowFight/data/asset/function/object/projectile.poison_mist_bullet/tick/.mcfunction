#> asset:object/projectile.poison_mist_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/projectile.poison_mist_bullet/tick

# パーティクル
    particle dust{color:[0.3,0.57,0.19],scale:1} ~ ~ ~ 0.2 0.2 0.2 1 2 force @a[distance=..64]
    particle dust{color:[0.2,0.47,0.1],scale:1} ~ ~ ~ 0.2 0.2 0.2 1 2 force @a[distance=..64]

# Super
    function asset:object/super.tick
