#> asset:object/system.book_how_to_play/init/
#
# Objectのinit時の処理
#
# @within asset_manager:object/init/init.m

# テキストを召喚、自分の上に乗せる
    summon text_display ~ ~ ~ {Tags:["Init","ProcessCommonTag","AutoKillWhenDieVehicle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[1f,1f,1f]},billboard:"vertical",shadow:1b,brightness:{sky:15,block:15},view_range:0.25,text:{"color":"white","fallback":" How to play ","translate":"lobby.button.how_to_play","underlined":true},background:16711680}
    tp @e[type=text_display,tag=Init,limit=1] ~ ~ ~ ~ ~
    ride @e[type=text_display,tag=Init,limit=1] mount @s
    tag @e[type=text_display,tag=Init,limit=1] remove Init
