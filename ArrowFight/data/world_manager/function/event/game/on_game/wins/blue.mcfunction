#> world_manager:event/game/on_game/wins/blue
#
# 
#
# @within function world_manager:event/game/on_game/tick

data modify storage world_manager: Game.State set value "EndGame"
data modify storage world_manager: Game.WinTeam set value "Blue"
scoreboard players reset $Game Game.Tick
