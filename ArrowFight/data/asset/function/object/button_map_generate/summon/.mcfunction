#> asset:object/button_map_generate/summon/
#
# Object召喚処理の呼び出し時の処理のエイリアス
#
# @within asset:object/_alias/button_map_generate/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/button_map_generate/summon/m with storage asset:temp Args
    data remove storage asset:temp Args
