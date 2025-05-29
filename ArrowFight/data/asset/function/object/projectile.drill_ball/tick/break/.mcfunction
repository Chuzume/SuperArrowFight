#> asset:object/projectile.drill_ball/tick/break/
#
# 
#
# @within function asset:object/projectile.drill_ball/tick/

# 一応自分の周囲も破壊する。
    fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #asset:object/projectile.drill_ball/breakable

# 周りを壊し、壊した数を記録。ついでにこのコマンドは、雪玉の進行方向に実行される。
    execute store result score @s projectile.drill_ball.Result on vehicle at @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s positioned ^ ^ ^2 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #asset:object/projectile.drill_ball/breakable

# ブロック破壊に成功してたら演出
    execute if score @s projectile.drill_ball.Result matches 1.. run function asset:object/projectile.drill_ball/tick/break/effects
