#> asset:object/system.game_start_button/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 触れられると発動、ただしロックされてないとき
    execute if data entity @s[tag=!system.game_start_button.Lock] interaction run function asset:object/system.game_start_button/tick/activate

# ロックされているときのTick処理
    execute if entity @s[tag=system.game_start_button.Lock] run function asset:object/system.game_start_button/tick/start/tick
