#> world_manager:event/generate_map/ore/
#
# 
#
# @within function asset:object/system.map_generate_button/tick/

# Diamond
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function world_manager:event/generate_map/ore/diamond/run
    execute positioned 471 101 535 run function world_manager:event/generate_map/ore/diamond/run

# Gold
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function world_manager:event/generate_map/ore/gold/run
    execute positioned 471 101 535 run function world_manager:event/generate_map/ore/gold/run

# Emerald
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function world_manager:event/generate_map/ore/emerald/run
    execute positioned 471 101 535 run function world_manager:event/generate_map/ore/emerald/run

# Redstone
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function world_manager:event/generate_map/ore/redstone/run
    execute positioned 471 101 535 run function world_manager:event/generate_map/ore/redstone/run

# Coal
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function world_manager:event/generate_map/ore/coal/run
    execute positioned 471 101 535 run function world_manager:event/generate_map/ore/coal/run

# Iron
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function world_manager:event/generate_map/ore/iron/run
    execute positioned 471 101 535 run function world_manager:event/generate_map/ore/iron/run

# リセット
    scoreboard players reset $Random Temporary
