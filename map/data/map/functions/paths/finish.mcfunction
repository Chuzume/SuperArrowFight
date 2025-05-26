gamemode survival @s

scoreboard players reset @s TIMER
tag @s remove hasPath
tag @s add stopPath
effect clear @s
give @s bow{Unbreakable:1b,HideFlags:4}
give @s stone_pickaxe
give @s stone_axe
give @s stone_shovel

tp @e[type=slime,tag=tp] ~ -1000 ~
kill @e[type=slime,tag=tp]