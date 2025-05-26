#> asset:object/button_map_generate/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/button_map_generate/tick

# 触れられた場合の処理
    execute if data entity @s interaction run function asset:object/button_map_generate/tick/generate_map.m with storage asset:context this
