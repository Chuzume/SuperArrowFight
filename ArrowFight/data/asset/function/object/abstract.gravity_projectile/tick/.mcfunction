#> asset:object/abstract.gravity_projectile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/abstract.gravity_projectile/tick

# 自身が何にも乗っていなければ、hitメソッドを発動する
    execute unless predicate lib:is_vehicle at @s run function asset:object/call.m {method:hit}
