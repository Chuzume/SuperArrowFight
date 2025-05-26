team join red @s
execute at @s run playsound minecraft:entity.arrow.hit_player ambient @s
particle minecraft:dust 0.99 0.2 0.2 4 ~ ~ ~ 0.2 0.1 0.5 0 50
title @s actionbar [{"text":"You joined team ","color":"white"},{"text":"Red","color":"red","bold":true}]