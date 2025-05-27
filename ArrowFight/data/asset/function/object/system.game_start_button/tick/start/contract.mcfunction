#> asset:object/system.game_start_button/tick/start/contract
#
# ひっこむ
#
# @within function asset:object/system.game_start_button/tick/start/tick

setblock ~ ~ ~ air
setblock ~ ~-4 ~ air
playsound minecraft:block.piston.contract block @a ~ ~ ~ 2 1
kill @s
