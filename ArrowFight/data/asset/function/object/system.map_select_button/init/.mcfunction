#> asset:object/system.map_select_button/init/
#
# Objectのinit時の処理
#
# @within asset:object/_alias/1/init

setblock ~ ~-1 ~ minecraft:chiseled_tuff
setblock ~ ~ ~ minecraft:stone_button[face=floor,powered=false,facing=north]
setblock ~ ~-2 ~ air
setblock ~ ~-3 ~ sticky_piston[facing=up]
setblock ~ ~-4 ~ redstone_block
