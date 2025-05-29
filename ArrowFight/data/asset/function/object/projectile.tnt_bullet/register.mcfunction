#> asset:object/projectile.tnt_bullet/register
#
# Objectのデータを指定
#
# @within function asset:object/_alias/projectile.tnt_bullet/register

# 継承(オプション)
    data modify storage asset:object Extends append value "abstract.gravity_projectile_3d"
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# ID (int)
    data modify storage asset:object ID set value "projectile.tnt_bullet"
# フィールド: 
    # 速度倍率、100倍して使うこと。86で大体矢と同じくらいのところに落ちる。
        data modify storage asset:object Field.SpeedMultiPlier set value 86
    # transformation
        data modify storage asset:object Field.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0f],scale:[1f,1f,1f]}
    # item
        data modify storage asset:object Field.Item set value {id:"minecraft:tnt",count:1}
