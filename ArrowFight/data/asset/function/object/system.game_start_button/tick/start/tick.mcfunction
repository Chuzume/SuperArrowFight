#> asset:object/system.game_start_button/tick/start/tick
#
# 
#
# @within function asset:object/system.game_start_button/tick/

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 引っ込む
    execute if score @s General.Object.Tick matches 20 run function asset:object/system.game_start_button/tick/start/contract
