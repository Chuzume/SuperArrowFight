#> asset:object/button_map_generate/init/m
#
# フィールドから見た目と名前を取得する
#
# @within function asset:object/button_map_generate/init/

#> Private
# @private
    #declare tag Init

# テキストを召喚、自分の上に乗せる
    $summon text_display ~ ~ ~ {Tags:["Init","ProcessCommonTag","AutoKillWhenDieVehicle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},shadow:1b,brightness:{sky:15,block:15},text:{"color":"white","text":"$(MapName)","underlined":true},background:16711680}
    tp @e[type=text_display,tag=Init,limit=1] ~ ~ ~ ~ ~
    ride @e[type=text_display,tag=Init,limit=1] mount @s
    tag @e[type=text_display,tag=Init,limit=1] remove Init

# モデルを召喚、自分の向きにしたあと自分の上に乗せる
    $summon item_display ~ ~ ~ {Tags:["Init","ProcessCommonTag","AutoKillWhenDieVehicle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[0.2f,0.2f,0.2f]},item:{id:"$(MapIcon)",count:1}}
    tp @e[type=item_display,tag=Init,limit=1] ~ ~ ~ ~ ~
    ride @e[type=item_display,tag=Init,limit=1] mount @s
    tag @e[type=item_display,tag=Init,limit=1] remove Init
