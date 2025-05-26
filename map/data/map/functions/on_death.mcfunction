scoreboard players set @s ingame 0
scoreboard players reset @s death
gamemode adventure @s
clear @s
title @s title {"text":"You Died!","color":"red"}
title @s subtitle {"text":"You are now at spawn!","color":"gray"}
tellraw @s [{"text":"You Died!","color":"red"},{"text":" You are now at spawn!","color":"gray"}]
effect give @s blindness 3 0 true