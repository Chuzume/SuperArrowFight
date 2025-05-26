effect clear @e[type=armor_stand,tag=mapLabel] glowing
execute if score Map value matches 1 run effect give @e[type=armor_stand,tag=jungleLabel] minecraft:glowing infinite 1 true
execute if score Map value matches 2 run effect give @e[type=armor_stand,tag=desertLabel] minecraft:glowing infinite 1 true
execute if score Map value matches 3 run effect give @e[type=armor_stand,tag=tulipLabel] minecraft:glowing infinite 1 true
execute if score Map value matches 4 run effect give @e[type=armor_stand,tag=mountainsLabel] minecraft:glowing infinite 1 true
execute if score Map value matches 5 run effect give @e[type=armor_stand,tag=iceLabel] minecraft:glowing infinite 1 true
execute if score Map value matches 6 run effect give @e[type=armor_stand,tag=cliffsLabel] minecraft:glowing infinite 1 true