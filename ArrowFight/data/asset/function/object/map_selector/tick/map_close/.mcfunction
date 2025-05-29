#> asset:object/map_selector/tick/map_close/
#
# 
#
# @within function asset:object/map_selector/tick/

# 演出
    playsound minecraft:block.stone_button.click_off neutral @a ~ ~ ~ 1 1

# 周辺のボタン全部消す
    kill @e[type=interaction,tag=Object.system.map_generate_button,distance=..16]

# 閉じモードにする
    tag @s add map_selector.Closed
    tag @s remove map_selector.Open

# リセット
    data remove entity @s interaction
