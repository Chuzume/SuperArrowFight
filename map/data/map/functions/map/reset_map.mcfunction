scoreboard players set ResettingMap value 1
execute if score Map value matches 1 run function map:map/set/jungle
execute if score Map value matches 2 run function map:map/set/desert
execute if score Map value matches 3 run function map:map/set/tulip_town
execute if score Map value matches 4 run function map:map/set/mountains
execute if score Map value matches 5 run function map:map/set/ice
execute if score Map value matches 6 run function map:map/set/cliffs
scoreboard players reset ResettingMap value
kill @e[type=item]
kill @e[type=experience_orb]