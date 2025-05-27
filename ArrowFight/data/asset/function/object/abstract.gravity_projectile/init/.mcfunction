#> asset:object/abstract.gravity_projectile/init/
#
# Objectのinit時の処理
#
# @within asset:object/_alias/abstract.gravity_projectile/init

# ダメージを与えて描画更新
    execute on vehicle run damage @s 0

# Motionで射出
    data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.Speed
    execute on vehicle at @s run function lib:motion/
