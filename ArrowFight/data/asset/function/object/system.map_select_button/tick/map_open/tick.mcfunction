#> asset:object/system.map_select_button/tick/map_open/tick
#
# 
#
# @within function asset:object/system.map_select_button/tick/

# Tick加算
    execute unless score @s General.Object.Tick matches 7.. run scoreboard players add @s General.Object.Tick 1

# マップ生成ボタンを出す
    execute if score @s General.Object.Tick matches 2 run function asset:object/system.map_select_button/tick/map_open/1
    execute if score @s General.Object.Tick matches 4 run function asset:object/system.map_select_button/tick/map_open/2
    execute if score @s General.Object.Tick matches 6 run function asset:object/system.map_select_button/tick/map_open/3
