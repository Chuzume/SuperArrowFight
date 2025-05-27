#> asset:object/projectile.drill_ball/register
#
# Objectのデータを指定
#
# @within function asset:object/_alias/projectile.drill_ball/register

# 継承(オプション)
    data modify storage asset:object Extends append value "abstract.gravity_projectile"
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value "projectile.drill_ball"
# フィールド: 速度倍率、100倍して使うこと
    data modify storage asset:object Field.SpeedMultiPlier set value 70
