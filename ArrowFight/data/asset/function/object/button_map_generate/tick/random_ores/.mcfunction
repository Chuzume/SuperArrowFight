#> asset:object/button_map_generate/tick/random_ores/
#
# 
#
# @within function asset:object/button_map_generate/tick/

# Diamond
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function asset:object/button_map_generate/tick/random_ores/diamond/run
    execute positioned 471 101 535 run function asset:object/button_map_generate/tick/random_ores/diamond/run

# Gold
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function asset:object/button_map_generate/tick/random_ores/gold/run
    execute positioned 471 101 535 run function asset:object/button_map_generate/tick/random_ores/gold/run

# Emerald
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function asset:object/button_map_generate/tick/random_ores/emerald/run
    execute positioned 471 101 535 run function asset:object/button_map_generate/tick/random_ores/emerald/run

# Redstone
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function asset:object/button_map_generate/tick/random_ores/redstone/run
    execute positioned 471 101 535 run function asset:object/button_map_generate/tick/random_ores/redstone/run

# Coal
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function asset:object/button_map_generate/tick/random_ores/coal/run
    execute positioned 471 101 535 run function asset:object/button_map_generate/tick/random_ores/coal/run

# Iron
    execute store result score $Random Temporary run random value 1..50
    execute positioned 507 101 535 run function asset:object/button_map_generate/tick/random_ores/iron/run
    execute positioned 471 101 535 run function asset:object/button_map_generate/tick/random_ores/iron/run

# リセット
    scoreboard players reset $Random Temporary
