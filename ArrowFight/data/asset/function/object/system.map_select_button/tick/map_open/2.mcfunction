#> asset:object/system.map_select_button/tick/map_open/2
#
# 
#
# @within function asset:object/system.map_select_button/tick/map_open/tick

# 音
    playsound minecraft:entity.arrow.hit_player block @a ~ ~ ~ 0.5 0.6

# タウン
    data modify storage api: Argument.FieldOverride set value {MapName:"タウン",MapIcon:"minecraft:red_glazed_terracotta",MapID:"flowerville"}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    execute positioned ^2 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}
    
# マウンテン
    data modify storage api: Argument.FieldOverride set value {MapName:"マウンテン",MapIcon:"minecraft:stone",MapID:"mountains"}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    execute positioned ^-2 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}
