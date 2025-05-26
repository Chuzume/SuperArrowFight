#meteor arrow (luck 1 aka instant damage 1 - "luck")

tag @e[type=arrow,nbt={Potion:"minecraft:luck"}] add meteorArrow

execute at @e[type=arrow,tag=meteorArrow,nbt={inGround:1b}] run function arrows:meteor/activate



execute as @e[nbt={active_effects:[{id: "minecraft:luck"}]}] at @s run function arrows:meteor/activate

effect clear @e luck



#Particles
execute at @e[type=arrow,tag=meteorArrow] run particle flame ~ ~ ~ 0.4 0.4 0.4 0.01 3 force
execute at @e[type=arrow,tag=meteorArrow] run particle large_smoke ~ ~ ~ 0 0 0 0 1 force
execute at @e[type=arrow,tag=meteorArrow] run particle dust 0.700 0.004 0.004 1 ~ ~ ~ 1 1 1 0 5 force


#fireball fall down
#execute as @e[tag=meteor,type=fireball] run data merge entity @s {Motion:[0.0,-2.5,0.0]}

#alarm + summon
function arrows:meteor/alarm