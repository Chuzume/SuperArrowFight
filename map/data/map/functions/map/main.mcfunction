execute if score CloseSelectionMenu value matches 0 if block 500 144 505 minecraft:acacia_button[powered=true] run scoreboard players set OpenSelectionMenu value 1
execute if score OpenSelectionMenu value matches 0 if block 500 144 505 minecraft:jungle_button[powered=true] run scoreboard players set CloseSelectionMenu value 1

#display glowing effect for selected map
function map:map/set_selected

gamerule doTileDrops false
execute if block 502 144 505 minecraft:birch_button[powered=true] unless score Map value matches 1 run function map:map/set/jungle
execute if block 504 144 505 minecraft:birch_button[powered=true] unless score Map value matches 3 run function map:map/set/tulip_town
execute if block 506 144 505 minecraft:birch_button[powered=true] unless score Map value matches 5 run function map:map/set/ice

execute if block 498 144 505 minecraft:birch_button[powered=true] unless score Map value matches 2 run function map:map/set/desert
execute if block 496 144 505 minecraft:birch_button[powered=true] unless score Map value matches 4 run function map:map/set/mountains
execute if block 494 144 505 minecraft:birch_button[powered=true] unless score Map value matches 6 run function map:map/set/cliffs
gamerule doTileDrops true


execute as @e[tag=shopBanner] at @s run tp @s ~ ~ ~ facing entity @p