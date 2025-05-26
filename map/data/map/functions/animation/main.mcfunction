function map:animation/countdown
function map:animation/startlabel

execute if score AnimateMapLabel value matches 1 run function map:animation/maplabel

execute if score ShowFireworks value matches 1 run function map:animation/red_win
execute if score ShowFireworks value matches 2 run function map:animation/blue_win

execute if score OpenSelectionMenu value matches 1 run function map:animation/map_selection/open
execute if score CloseSelectionMenu value matches 1 run function map:animation/map_selection/close

execute as @e[tag=rotate_right] at @s run tp @s ~ ~ ~ ~2.5 ~
execute as @e[tag=rotate_left] at @s run tp @s ~ ~ ~ ~-2.5 ~
