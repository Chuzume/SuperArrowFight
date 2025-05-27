#> world_manager:event/tick
#
# 
#
# @within function core:tick/

# 試合Tick
    execute if data storage world_manager: Game{Active:true} run function world_manager:event/game/tick
