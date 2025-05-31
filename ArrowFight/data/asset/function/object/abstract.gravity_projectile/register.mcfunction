#> asset:object/abstract.gravity_projectile/register
#
# Objectのデータを指定
#
# @within function asset_manager:object/summon/register.m

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value true
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value
# ID (int)
    data modify storage asset:object ID set value "abstract.gravity_projectile"
# フィールド(オプション)
    # data modify storage asset:object Field.myValue set value 
