#block eater arrow (invis 22 sec - "invisibility")
tag @e[type=arrow,nbt={Potion:"minecraft:invisibility"}] add eatArrow
effect clear @a[gamemode=survival] invisibility
effect clear @e[type=!player,tag=!tp] invisibility

scoreboard players add @e[type=arrow,tag=eatArrow] eatDelay 1

execute at @e[type=arrow,tag=eatArrow,scores={eatDelay=5..}] run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute at @e[type=arrow,tag=eatArrow,scores={eatDelay=5..}] run fill ~2 ~1 ~1 ~2 ~-1 ~-1 air
execute at @e[type=arrow,tag=eatArrow,scores={eatDelay=5..}] run fill ~-2 ~1 ~1 ~-2 ~-1 ~-1 air
execute at @e[type=arrow,tag=eatArrow,scores={eatDelay=5..}] run fill ~1 ~1 ~2 ~-1 ~-1 ~2 air
execute at @e[type=arrow,tag=eatArrow,scores={eatDelay=5..}] run fill ~1 ~1 ~-2 ~-1 ~-1 ~-2 air

execute at @e[type=arrow,tag=eatArrow,scores={eatDelay=5..}] run playsound minecraft:entity.generic.eat master @a
execute at @e[type=arrow,tag=eatArrow] run particle crit ~ ~ ~ 0.5 0.5 0.5 0.1 4

function arrows:eat/corners