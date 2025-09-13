#> asset:mob/trader.arrow_shop/register
#
# Mobのデータを指定
#
# @within function asset_manager:mob/summon/register.m

# 継承(オプション)
    # data modify storage asset:mob Extends append value 
    # function asset:mob/_extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value "trader.arrow_shop"
# フィールド(オプション)
    # data modify storage asset:mob Field.myValue set value 
