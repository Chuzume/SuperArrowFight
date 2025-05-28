#> world_manager:event/tick
#
# 
#
# @within function core:tick/

# 試合Tick
    execute if data storage world_manager: Game{Active:true} positioned 499 114 557 run function world_manager:event/game/tick
