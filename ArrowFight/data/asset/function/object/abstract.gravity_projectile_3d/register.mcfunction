#> asset:object/abstract.gravity_projectile_3d/register
#
# Objectのデータを指定
#
# @within function asset:object/_alias/abstract.gravity_projectile_3d/register

# 継承(オプション)
    data modify storage asset:object Extends append value abstract.gravity_projectile
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value true

# ID (int)
    data modify storage asset:object ID set value "abstract.gravity_projectile_3d"
# フィールド
    # interpolation_duration
        data modify storage asset:object Field.InterpolationDuration set value 2
    # transformation
        data modify storage asset:object Field.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0f],scale:[1f,1f,1f]}
    # item
        data modify storage asset:object Field.Item set value {id:"minecraft:stone",count:1}
    # item_display
        data modify storage asset:object Field.ItemDisplay set value "none" 
