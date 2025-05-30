#> asset:object/projectile.lightning_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/projectile.lightning_bullet/tick

# パーティクル
    particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0.5 5 force @a[distance=..64]

# Super
    function asset:object/super.tick
