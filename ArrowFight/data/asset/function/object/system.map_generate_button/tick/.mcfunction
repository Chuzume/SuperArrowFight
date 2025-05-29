#> asset:object/system.map_generate_button/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/system.map_generate_button/tick

# 触れられた場合の処理
    execute if data entity @s interaction run function asset:object/system.map_generate_button/tick/interacted.m with storage asset:context this
