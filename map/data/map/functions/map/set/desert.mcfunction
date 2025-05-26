execute unless score ResettingMap value matches 1 run function map:map/on_map_update

scoreboard players set Map value 2

setblock 505 68 532 minecraft:redstone_block
setblock 522 112 545 sandstone

setblock 495 68 532 minecraft:redstone_block
setblock 478 112 545 sandstone

kill @e[type=item]



#Generate ores

execute as @e[type=armor_stand,name=console] run function map:random_ores/run



#Villager

tp @e[type=minecraft:villager,name=Shop] ~ -1000 ~

execute positioned 521 116 557 rotated 90 0 run function map:map/set/villager

execute positioned 479 116 557 rotated -90 0 run function map:map/set/villager

execute as @e[type=villager] run data merge entity @s {VillagerData: {profession: "minecraft:mason", level: 6, type: "minecraft:desert"}}


scoreboard players set @e[type=armor_stand,tag=stay] map 4