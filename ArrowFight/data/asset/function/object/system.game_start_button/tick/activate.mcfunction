#> asset:object/system.game_start_button/tick/activate
#
# 
#
# @within function asset:object/system.game_start_button/tick/


# エラーなど
    # 両方いない
        execute unless entity @n[team=Team.Red,distance=..64] unless entity @n[team=Team.Blue,distance=..64] run function asset:object/system.game_start_button/tick/fail/no_player
    # 赤がいない
        execute unless entity @n[team=Team.Red,distance=..64] if entity @n[team=Team.Blue,distance=..64] run function asset:object/system.game_start_button/tick/fail/no_red
    # 青がいない
        execute unless entity @n[team=Team.Blue,distance=..64] if entity @n[team=Team.Red,distance=..64] run function asset:object/system.game_start_button/tick/fail/no_blue
    # エラーであれば演出
        execute if entity @s[tag=system.game_start_button.Failed] run function asset:object/system.game_start_button/tick/fail/vfx

# 開始に成功
    execute unless entity @s[tag=system.game_start_button.Failed] run function asset:object/system.game_start_button/tick/start/
    
# リセット
    data remove entity @s interaction
    tag @s remove system.game_start_button.Failed
