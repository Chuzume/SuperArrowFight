#> asset:object/system.map_select_button/init/
#
# Objectのinit時の処理
#
# @within asset_manager:object/init/init.m

# テキストを召喚、自分の上に乗せる
    summon text_display ~ ~ ~ {Tags:["Init","ProcessCommonTag","AutoKillWhenDieVehicle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1f,1f,1f]},billboard:"vertical",shadow:1b,brightness:{sky:15,block:15},text:{"color":"white","fallback":" Select map ","translate":"lobby.button.select_map","underlined":true},background:16711680}
    tp @e[type=text_display,tag=Init,limit=1] ~ ~ ~ ~ ~
    ride @e[type=text_display,tag=Init,limit=1] mount @s
    tag @e[type=text_display,tag=Init,limit=1] remove Init

# ブロック周りの処理
    setblock ~ ~-1 ~ minecraft:chiseled_tuff
    setblock ~ ~ ~ minecraft:stone_button[face=floor,powered=false,facing=north]
    setblock ~ ~-2 ~ air
    setblock ~ ~-3 ~ sticky_piston[facing=up]
    setblock ~ ~-4 ~ redstone_block
