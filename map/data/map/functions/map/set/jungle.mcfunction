execute unless score ResettingMap value matches 1 run function map:map/on_map_update

scoreboard players set Map value 1

setblock 507 68 532 minecraft:redstone_block

setblock 497 68 532 minecraft:redstone_block

kill @e[type=item]



#Generate ores

execute as @e[type=armor_stand,name=console] run function map:random_ores/run



#Villager

tp @e[type=minecraft:villager,name=Shop] ~ -1000 ~

execute positioned 526.0 121 558.00 rotated 90 0 run function map:map/set/villager

execute positioned 475.0 121 558.0 rotated -90 0 run function map:map/set/villager

execute as @e[type=villager] run data merge entity @s {VillagerData: {profession: "minecraft:mason", level: 6, type: "minecraft:jungle"}}



scoreboard players set @e[type=armor_stand,tag=stay] map 3