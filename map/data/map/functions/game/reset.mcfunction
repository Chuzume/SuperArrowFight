scoreboard players set ingame value 0
tag @a remove inWater
function map:spawn/unlock
clear @a
effect give @a[tag=winner] resistance 1 100 true
tp @a[tag=winner] 500 152 477 0 10
tp @a[tag=!winner,scores={ingame=1}] 500 146.9375 482 0 10
advancement grant @a[tag=winner] only map:victorious
scoreboard players add @a[tag=winner,scores={ingame=1}] streak 1
scoreboard players reset @a[tag=!winner,scores={ingame=1}] streak
scoreboard players add @a[tag=winner] wins 1
tellraw @a[tag=winner] [{"text":"Shop » ","color":"yellow","bold":true},{"text":"You just earned 1 token for winning a game while still alive!","color":"gold","bold":false}]
execute as @e[type=armor_stand,tag=stay,scores={map=1}] run scoreboard players set @a[team=!spec] playedOn1 1
execute as @e[type=armor_stand,tag=stay,scores={map=2}] run scoreboard players set @a[team=!spec] playedOn2 1
execute as @e[type=armor_stand,tag=stay,scores={map=3}] run scoreboard players set @a[team=!spec] playedOn3 1
execute as @e[type=armor_stand,tag=stay,scores={map=4}] run scoreboard players set @a[team=!spec] playedOn4 1
execute as @e[type=armor_stand,tag=stay,scores={map=5}] run scoreboard players set @a[team=!spec] playedOn5 1
execute as @e[type=armor_stand,tag=stay,scores={map=6}] run scoreboard players set @a[team=!spec] playedOn6 1
tag @a remove winner
scoreboard players reset * rocketArrow
scoreboard players set @a ingame 0
gamemode adventure @a
kill @e[tag=mapEntity,tag=!noKill]
xp set @a 0 levels
xp set @a 0 points