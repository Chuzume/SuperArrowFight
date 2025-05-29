#> asset:object/system.map_select_button/tick/clear_generate_button
#
# 生成ボタンを演出付きで消す
#
# @within function 
#   asset:object/system.map_select_button/tick/map_close/interacted
#   asset:object/system.map_select_button/tick/contract

particle minecraft:dust_plume ~ ~0.5 ~ 0.2 0.2 0.2 0.1 10
playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 0.3 0.7
kill @s
