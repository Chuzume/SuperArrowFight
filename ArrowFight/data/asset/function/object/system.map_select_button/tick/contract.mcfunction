#> asset:object/system.map_select_button/tick/contract
#
# 消える処理
#
# @within function asset:object/system.map_select_button/tick/

# ピストンとか消す
    setblock ~ ~ ~ air
    setblock ~ ~-4 ~ air
    playsound minecraft:block.piston.contract block @a ~ ~ ~ 2 1

# ボタンを片付ける
    kill @e[type=interaction,tag=Object.system.map_generate_button,distance=..16]

# 消失
    kill @s
