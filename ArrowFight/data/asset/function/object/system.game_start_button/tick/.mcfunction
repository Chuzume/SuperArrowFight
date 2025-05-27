#> asset:object/system.game_start_button/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/system.game_start_button/tick

# 触れられると発動、ただしロックされてないとき
    execute if data entity @s[tag=!system.game_start_button.Lock] interaction run function asset:object/system.game_start_button/tick/activate

# ロックされているとき、Tick加算。
    scoreboard players add @s[tag=system.game_start_button.Lock] General.Object.Tick 1

# ある程度Tickが経つと引っ込む
    execute if score @s General.Object.Tick matches 30 run function asset:object/system.game_start_button/tick/deactive
