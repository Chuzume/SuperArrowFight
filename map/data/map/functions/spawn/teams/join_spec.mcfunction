team join spec @s
execute at @s run playsound minecraft:entity.arrow.hit_player ambient @s
particle minecraft:dust 0.4 0.4 0.4 4 ~ ~ ~ 0.2 0.5 0.2 0 50
title @s actionbar [{"text":"You are now a ","color":"white"},{"text":"Spectator","color":"dark_gray","bold":true}]