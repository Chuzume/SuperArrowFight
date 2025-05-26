tag @s add netherArrow

tag @s add temp

execute as @p if entity @s[team=red] run tag @e[type=arrow,tag=temp,sort=nearest,limit=1] add shotFromRed
execute as @p if entity @s[team=blue] run tag @e[type=arrow,tag=temp,sort=nearest,limit=1] add shotFromBlue

tag @s remove temp