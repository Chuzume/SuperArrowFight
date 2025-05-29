#> asset:object/system.map_select_button/tick/map_close/interacted
#
# 
#
# @within function asset:object/system.map_select_button/tick/

# 演出
    playsound minecraft:block.stone_button.click_off neutral @a ~ ~ ~ 1 1

# 周辺のボタン全部消す
    execute as @e[type=interaction,tag=Object.system.map_generate_button,distance=..16] at @s run function asset:object/system.map_select_button/tick/clear_generate_button

# 閉じモードにする
    tag @s add system.map_select_button.Closed
    tag @s remove system.map_select_button.Open

# ボタンを戻す
    setblock ~ ~ ~ minecraft:stone_button[face=floor,powered=false,facing=north]

# リセット
    scoreboard players reset @s General.Object.Tick
    data remove entity @s interaction
