#> asset:object/system.game_start_button/tick/deactive
#
# 引っ込んで消える
#
# @within function asset:object/system.game_start_button/tick/

setblock ~ ~ ~ air
setblock ~ ~-4 ~ air
kill @s
