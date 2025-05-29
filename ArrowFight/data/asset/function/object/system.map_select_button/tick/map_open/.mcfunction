#> asset:object/system.map_select_button/tick/map_open/
#
# 
#
# @within function asset:object/system.map_select_button/tick/

# 演出
    playsound minecraft:block.stone_button.click_on neutral @a ~ ~ ~ 1 1

# 生成ボタンを召喚
    # ジャングル
        data modify storage api: Argument.FieldOverride set value {MapName:"ジャングル",MapIcon:"minecraft:jungle_leaves",MapID:"jungle"}
        execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
        execute positioned ^1 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}
    # タウン
        data modify storage api: Argument.FieldOverride set value {MapName:"タウン",MapIcon:"minecraft:red_glazed_terracotta",MapID:"flowerville"}
        execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
        execute positioned ^2 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}
    # アイス
        data modify storage api: Argument.FieldOverride set value {MapName:"アイス",MapIcon:"minecraft:packed_ice",MapID:"ice"}
        execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
        execute positioned ^3 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}
    # サンド
        data modify storage api: Argument.FieldOverride set value {MapName:"デザート",MapIcon:"minecraft:sand",MapID:"desert"}
        execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
        execute positioned ^-1 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}
    # マウンテン
        data modify storage api: Argument.FieldOverride set value {MapName:"マウンテン",MapIcon:"minecraft:stone",MapID:"mountains"}
        execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
        execute positioned ^-2 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}
    # クリフ
        data modify storage api: Argument.FieldOverride set value {MapName:"クリフ",MapIcon:"minecraft:red_sand",MapID:"cliff"}
        execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
        execute positioned ^-3 ^ ^ rotated 180 0 run function api:object/summon.m {ID:system.map_generate_button}

# 開きモードにする
    tag @s add system.map_select_button.Open
    tag @s remove system.map_select_button.Closed

# リセット
    data remove entity @s interaction
