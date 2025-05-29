#> asset:object/projectile.drill_ball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/projectile.drill_ball/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# パーティクル
    particle minecraft:crit ~ ~ ~ 0 0 0 0.05 1 force @a[distance=..32]

# しばらく経つと地形を壊すようになる
    execute if score @s General.Object.Tick matches 5.. run function asset:object/projectile.drill_ball/tick/break

# 地形破壊で得たスコアを耐久値から削る
    scoreboard players operation @s projectile.drill_ball.Durability -= @s projectile.drill_ball.Result

# 耐久値0未満で破壊される
    execute if score @s projectile.drill_ball.Durability matches ..-1 run function asset:object/call.m {method:hit}

# フェイルセーフ兼射程
    execute if score @s General.Object.Tick matches 600.. run function asset:object/call.m {method:hit}

# Super
    function asset:object/super.tick
