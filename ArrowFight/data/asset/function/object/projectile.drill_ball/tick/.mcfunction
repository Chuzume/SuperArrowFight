#> asset:object/projectile.drill_ball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/projectile.drill_ball/tick

# パーティクル
    particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0.05 10
    particle minecraft:crit ~ ~ ~ 0 0 0 0.05 1 force @a[distance=..32]

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# Super
    function asset:object/super.tick

# フェイルセーフ兼射程
    execute if score @s General.Object.Tick matches 600.. run function asset:object/call.m {method:hit}
