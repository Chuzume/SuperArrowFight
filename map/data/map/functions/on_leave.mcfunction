scoreboard players reset @s TIMER
tag @s remove hasPath
tag @s add stopPath

tp @s 500 146.9375 482 0 0
scoreboard players set @s ingame 0
scoreboard players reset @s leave
tag @s remove inWater
effect clear @s
gamemode adventure @s
clear @s