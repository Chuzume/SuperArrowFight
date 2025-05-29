#> asset:object/system.map_select_button/tick/map_open/interacted
#
# 
#
# @within function asset:object/system.map_select_button/tick/

# 演出
    playsound minecraft:block.stone_button.click_on neutral @a ~ ~ ~ 1 1

# 開きモードにする
    tag @s add system.map_select_button.Open
    tag @s remove system.map_select_button.Closed

# ボタンを押し込む
    setblock ~ ~ ~ minecraft:stone_button[face=floor,powered=true,facing=north]

# リセット
    data remove entity @s interaction
