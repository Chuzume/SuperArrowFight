#> asset:object/system.map_select_button/tick/map_open/3
#
# 
#
# @within function asset:object/system.map_select_button/tick/map_open/tick

# 音
    playsound minecraft:entity.arrow.hit_player block @a ~ ~ ~ 0.5 0.7

# アイス
    data modify storage api: Argument.FieldOverride set value {MapName:"アイス",MapIcon:"minecraft:packed_ice",MapID:"ice"}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    execute positioned ^3 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}

# クリフ
    data modify storage api: Argument.FieldOverride set value {MapName:"クリフ",MapIcon:"minecraft:red_sand",MapID:"cliff"}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    execute positioned ^-3 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}
