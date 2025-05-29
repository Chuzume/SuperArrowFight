#> asset:object/system.map_select_button/tick/map_close/
#
# 
#
# @within function asset:object/system.map_select_button/tick/

# 演出
    playsound minecraft:block.stone_button.click_off neutral @a ~ ~ ~ 1 1

# 周辺のボタン全部消す
    kill @e[type=interaction,tag=Object.system.map_generate_button,distance=..16]

# 閉じモードにする
    tag @s add system.map_select_button.Closed
    tag @s remove system.map_select_button.Open

# リセット
    data remove entity @s interaction
