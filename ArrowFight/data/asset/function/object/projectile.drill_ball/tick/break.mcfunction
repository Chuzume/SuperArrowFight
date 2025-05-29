#> asset:object/projectile.drill_ball/tick/break
#
# 地形破壊！
#
# @within function asset:object/projectile.drill_ball/tick/

# 周りを壊し、壊した数を記録。記録したスコアは後で耐久減らすのに使う。
    execute at @s store result score @s projectile.drill_ball.Result run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #asset:object/projectile.drill_ball/breakable
