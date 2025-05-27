#> world_manager:event/game/tick
#
# 試合中に実行されるもの
#
# @within function world_manager:event/tick

# Tick加算
    scoreboard players add $Game Game.Tick 1

# 状態で分岐
    execute if data storage world_manager: Game{State:"PreStart"} run function world_manager:event/game/pre_start/
