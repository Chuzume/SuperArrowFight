#> asset:mob/0003.abstract_chaser_ai/register
#
# Mobのデータを指定
#
# @within function asset:mob/_alias/3/register

# 継承(オプション)
    data modify storage asset:mob Extends append value 2
    function asset:mob/_extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value true
# ID (int)
    data modify storage asset:mob ID set value 3
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 
