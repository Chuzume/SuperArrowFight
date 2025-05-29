#> asset:object/abstract.gravity_projectile_3d/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/abstract.gravity_projectile_3d/tick

# 雪玉として実行
    execute on vehicle run function asset:object/abstract.gravity_projectile_3d/tick/on_vehicle

# Super
    function asset:object/super.tick
