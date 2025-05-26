#Set players ingame
scoreboard players set @a[tag=hasPath] ingame 1

#kill people in water
execute as @a at @s if entity @s[y=70,dy=15] if block ~ ~ ~ water run tag @s add inWater
effect give @a[tag=inWater] minecraft:instant_damage infinite 0 true
effect give @a[tag=inWater] minecraft:resistance infinite 2 true
effect give @a[tag=inWater] minecraft:poison infinite 1 true

#Make sure border doesn't dissapear by explosion
function map:game/set_borders

#If red wins
execute if entity @a[team=red,scores={ingame=1}] unless entity @a[team=blue,scores={ingame=1}] run function map:game/result/red_won
#If blue wins
execute if entity @a[team=blue,scores={ingame=1}] unless entity @a[team=red,scores={ingame=1}] run function map:game/result/blue_won

#if no one wins (both teams leave at same tick or something), reset game
execute unless entity @a[team=blue,scores={ingame=1}] unless entity @a[team=red,scores={ingame=1}] run function map:game/reset