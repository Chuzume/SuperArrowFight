#> world_manager:event/game/pre_start/title/start/set_data
#
# ゲーム開始フラグ立ててスコアを調整
#
# @within function world_manager:event/game/pre_start/

# ゲーム開始フラグ立ててスコアを調整
    data modify storage world_manager: Game.State set value "OnGame"
    scoreboard players reset $Game Game.Tick
