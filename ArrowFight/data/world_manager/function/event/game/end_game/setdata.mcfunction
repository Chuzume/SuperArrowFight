#> world_manager:event/game/end_game/setdata
#
# 
#
# @within function world_manager:event/game/end_game/tick

data remove storage world_manager: Game.State
data remove storage world_manager: Game.Active
data remove storage world_manager: Game.WinTeam
scoreboard players reset $Game Game.Tick
function world_manager:event/game/reset
