execute unless score ResettingMap value matches 1 run function map:map/on_map_update

scoreboard players set Map value 4

setblock 506 68 532 minecraft:redstone_block

setblock 496 68 532 minecraft:redstone_block

kill @e[type=item]



#Generate ores

execute as @e[type=armor_stand,name=console] run function map:random_ores/run



#Villager

tp @e[type=minecraft:villager,name=Shop] ~ -1000 ~

execute positioned 514 116 543 rotated 90 0 run function map:map/set/villager

execute positioned 486 116 543 rotated -90 0 run function map:map/set/villager

execute as @e[type=villager] run data merge entity @s {VillagerData: {profession: "minecraft:mason", level: 6, type: "minecraft:taiga"}}

scoreboard players set @e[type=armor_stand,tag=stay] map 5