#> asset:mob/1015.piglin_sword/register
#
# Mobのデータを指定
#
# @within function asset:mob/_alias/1015/register

# 継承
    data modify storage asset:mob Extends append value 2
    function asset:mob/_extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 1015
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 
