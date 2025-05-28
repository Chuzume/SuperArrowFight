#> world_manager:event/game/on_game/wins/red
#
# 
#
# @within function world_manager:event/game/on_game/tick

data modify storage world_manager: Game.State set value "EndGame"
data modify storage world_manager: Game.WinTeam set value "Red"
scoreboard players reset $Game Game.Tick
