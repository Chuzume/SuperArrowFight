#> asset:object/button_map_generate/register
#
# Objectのデータを指定
#
# @within function asset:object/_alias/button_map_generate/register

# 継承(オプション)
    # data modify storage asset:object Extends append value 
    # function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value button_map_generate
# フィールド(オプション)
    data modify storage asset:object Field.Map set value Blank
    data modify storage asset:object Field.MapIcon set value "minecraft:stone"
    data modify storage asset:object Field.MapName set value "マップ名"
