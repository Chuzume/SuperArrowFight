#people in spawn can't be ingame
scoreboard players set @a[x=500,y=147,z=491,distance=..20] ingame 0



#Start check
function map:spawn/start/main

#Effects
effect give @a[x=500,y=147,z=491,distance=..20] minecraft:weakness infinite 100 true
effect give @a[x=500,y=147,z=491,distance=..20] minecraft:resistance infinite 100 true

#Remove inWater effect
tag @a[x=500,y=147,z=491,distance=..20] remove inWater
effect clear @a[x=500,y=147,z=491,distance=..20] minecraft:poison
effect clear @a[x=500,y=147,z=491,distance=..20] minecraft:instant_damage

#Farmland
fill 504 146 485 511 146 483 minecraft:farmland[moisture=7] replace dirt
fill 489 146 485 496 146 483 minecraft:farmland[moisture=7] replace dirt

#Particles
particle minecraft:dust 0.35 0.75 0.99 0.7 492 147 491 1 1 1 0 10 normal
particle minecraft:dust 0.99 0.2 0.2 0.7 508 147 491 1 1 1 0 10 normal
particle minecraft:dust 0.3 0.3 0.3 0.7 500 147 476 2 2 2 0 20 normal

#Team joining
execute as @a[team=!red,x=509,y=147,z=490,dx=-2,dy=1,dz=2,nbt={OnGround:1b}] at @s run function map:spawn/teams/join_red
execute as @a[team=!blue,x=493,y=147,z=490,dx=-2,dy=1,dz=2,nbt={OnGround:1b}] at @s run function map:spawn/teams/join_blue
execute as @a[team=!spec,x=496,y=147,z=479,dx=8,dy=0,dz=-5,nbt={OnGround:1b}] at @s run function map:spawn/teams/join_spec