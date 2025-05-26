scoreboard players add OpenSelectionMenu animation 1
execute if score OpenSelectionMenu animation matches 1 run function map:animation/map_selection/open/1
execute if score OpenSelectionMenu animation matches 2 run function map:animation/map_selection/open/2
execute if score OpenSelectionMenu animation matches 4 run function map:animation/map_selection/open/3
execute if score OpenSelectionMenu animation matches 6 run function map:animation/map_selection/open/4
execute if score OpenSelectionMenu animation matches 10 run scoreboard players set OpenSelectionMenu value 0
execute if score OpenSelectionMenu animation matches 10 run scoreboard players reset OpenSelectionMenu animation