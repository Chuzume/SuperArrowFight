#> asset:object/map_selector/tick/map_open/
#
# 
#
# @within function asset:object/map_selector/tick/

# 生成ボタンを召喚
    # フラワータウン
    data modify storage api: Argument.FieldOverride set value {MapName:"フラワータウン",MapIcon:"minecraft:red_tulip"}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    execute positioned ^2 ^1 ^ run function api:object/summon.m {ID:button_map_generate}

# リセット
    data remove entity @s interaction
