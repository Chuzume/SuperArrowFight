#> asset:object/projectile.drill_ball/tick/break/dig_block
#
# 
#
# @within function asset:object/projectile.drill_ball/tick/break/

# 破壊
    execute store success score @s projectile.drill_ball.Result run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air replace #asset:object/projectile.drill_ball/breakable
    execute store success score @s projectile.drill_ball.Result run fill ~2 ~1 ~1 ~2 ~-1 ~-1 air replace #asset:object/projectile.drill_ball/breakable
    execute store success score @s projectile.drill_ball.Result run fill ~-2 ~1 ~1 ~-2 ~-1 ~-1 air replace #asset:object/projectile.drill_ball/breakable
    execute store success score @s projectile.drill_ball.Result run fill ~1 ~1 ~2 ~-1 ~-1 ~2 air replace #asset:object/projectile.drill_ball/breakable
    execute store success score @s projectile.drill_ball.Result run fill ~1 ~1 ~-2 ~-1 ~-1 ~-2 air replace #asset:object/projectile.drill_ball/breakable

# ブロック破壊に成功してたら演出
    execute if score @s projectile.drill_ball.Result matches 1.. run function asset:object/projectile.drill_ball/tick/break/effects
