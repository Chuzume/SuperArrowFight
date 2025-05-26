#/scoreboard players set ShowFireworks value 1/2

#1 = red fireworks

#2 = blue fireworks



scoreboard players add FireworkTimer value 1

scoreboard players add Fire value 1

execute if score Fire value matches 1 if score ShowFireworks value matches 1 if score FireworkTimer value matches ..300 run function map:fireworks/summon_red

execute if score Fire value matches 1 if score ShowFireworks value matches 2 if score FireworkTimer value matches ..300 run function map:fireworks/summon_blue

execute if score FireworkTimer value matches 300.. run function map:fireworks/end

execute if score Fire value matches 4 run scoreboard players reset Fire

spreadplayers 501 561 0 70 false @e[type=firework_rocket,nbt={Life: 1}]