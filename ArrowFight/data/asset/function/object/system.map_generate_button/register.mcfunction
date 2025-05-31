#> asset:object/system.map_generate_button/register
#
# Objectのデータを指定
#
# @within function asset_manager:object/summon/register.m

# 継承(オプション)
    # data modify storage asset:object Extends append value 
    # function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value system.map_generate_button
# フィールド(オプション)
    data modify storage asset:object Field.MapID set value Blank
    data modify storage asset:object Field.MapIcon set value "minecraft:stone"
    data modify storage asset:object Field.MapName set value "マップ名"
