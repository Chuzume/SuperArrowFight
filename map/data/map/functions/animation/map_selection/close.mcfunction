scoreboard players add CloseSelectionMenu animation 1
execute if score CloseSelectionMenu animation matches 1 run function map:animation/map_selection/close/4
execute if score CloseSelectionMenu animation matches 2 run function map:animation/map_selection/close/3
execute if score CloseSelectionMenu animation matches 4 run function map:animation/map_selection/close/2
execute if score CloseSelectionMenu animation matches 6 run function map:animation/map_selection/close/1
execute if score CloseSelectionMenu animation matches 10 run scoreboard players set CloseSelectionMenu value 0
execute if score CloseSelectionMenu animation matches 10 run scoreboard players reset CloseSelectionMenu animation
