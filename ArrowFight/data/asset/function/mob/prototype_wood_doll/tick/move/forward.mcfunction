#> asset:mob/prototype_wood_doll/tick/move/forward
#
# 前移動
#
# @within function asset:mob/prototype_wood_doll/tick/

# 向き！
    rotate @s ~ 0
    rotate @n[type=item_display,tag=MyModel,distance=..0.5] ~ 0

# 速度を設定して飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 0.25
    function lib:motion/horizontal

# 上方向
#    data modify entity @s Motion[1] set value 0.7d
