#> asset:object/abstract.gravity_projectile/init/
#
# Objectのinit時の処理
#
# @within asset:object/_alias/abstract.gravity_projectile/init

# ダメージを与えて描画更新
    execute on vehicle run damage @s 0

# Motion関係
    # 矢から変換されてる？
        execute if data storage asset:context this.IsConvertFromArrow on vehicle at @s run function asset:object/abstract.gravity_projectile/init/arrow_motion/
    # されてないならFieldの値を使う
        execute unless data storage asset:context this.IsConvertFromArrow on vehicle at @s run function asset:object/abstract.gravity_projectile/init/fixed_motion
