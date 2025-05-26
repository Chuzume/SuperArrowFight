scoreboard players add @s rocketArrow 1
scoreboard players reset @s[scores={rocketArrow=31..}] rocketArrow
ride @s mount @e[type=firework_rocket,tag=rocketArrow,sort=nearest,limit=1,distance=..2]
title @s actionbar ""
effect give @s resistance 5 2 true