#> asset:object/projectile.napalm_arrow/tick/stuck
#
# 
#
# @within function asset:object/projectile.napalm_arrow/tick/

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if score @s General.Object.Tick matches 5 run function asset:object/projectile.napalm_arrow/tick/alert
    execute if score @s General.Object.Tick matches 10 run function asset:object/projectile.napalm_arrow/tick/alert

# 爆ぜる
    execute if score @s General.Object.Tick matches 20 run function asset:object/projectile.napalm_arrow/tick/explosion
