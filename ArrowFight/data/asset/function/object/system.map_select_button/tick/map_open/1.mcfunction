#> asset:object/system.map_select_button/tick/map_open/1
#
# 
#
# @within function asset:object/system.map_select_button/tick/map_open/tick

# 音
    playsound minecraft:entity.arrow.hit_player block @a ~ ~ ~ 0.5 0.5

# ジャングル
    data modify storage api: Argument.FieldOverride set value {MapName:"ジャングル",MapIcon:"minecraft:jungle_leaves",MapID:"jungle"}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    execute positioned ^1 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}

# サンド
    data modify storage api: Argument.FieldOverride set value {MapName:"デザート",MapIcon:"minecraft:sand",MapID:"desert"}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    execute positioned ^-1 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}
