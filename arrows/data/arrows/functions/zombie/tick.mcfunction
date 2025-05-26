#zombie apocalypse arrow (leaping arrow 1 min - "jump_boost")
execute as @e[type=arrow,nbt={Potion:"minecraft:leaping"}] run tag @s add zombieArrow
execute at @e[type=arrow,tag=zombieArrow,nbt={inGround:1b}] run summon area_effect_cloud ~ ~1 ~ {Duration:8,Tags:["zombieArrow","mapMob"]}

execute as @e[nbt={active_effects:[{id: "minecraft:jump_boost"}]}] at @s run summon area_effect_cloud ~ ~1 ~ {Duration:8,Tags:["zombieArrow","mapMob"]}
effect clear @e jump_boost

#Zombies
execute at @e[type=area_effect_cloud,tag=zombieArrow] positioned ^ ^ ^2 if block ~ ~ ~ air if block ~ ~1 ~ air run summon zombie ~ ~ ~ {Fire:-1s,Tags:["zombieArrow","mapMob"]}
execute at @e[type=area_effect_cloud,tag=zombieArrow] positioned ^ ^ ^-2 if block ~ ~ ~ air if block ~ ~1 ~ air run summon zombie ~ ~ ~ {Fire:-1s,Tags:["zombieArrow","mapMob"]}
execute at @e[type=area_effect_cloud,tag=zombieArrow] positioned ^ ^ ^2 if block ~ ~ ~ water if block ~ ~1 ~ air run summon zombie ~ ~ ~ {Fire:-1s,Tags:["zombieArrow","mapMob"]}
execute at @e[type=area_effect_cloud,tag=zombieArrow] positioned ^ ^ ^-2 if block ~ ~ ~ water if block ~ ~1 ~ air run summon zombie ~ ~ ~ {Fire:-1s,Tags:["zombieArrow","mapMob"]}
execute at @e[type=area_effect_cloud,tag=zombieArrow] positioned ^ ^ ^2 if block ~ ~ ~ lava if block ~ ~1 ~ air run summon zombie ~ ~ ~ {Fire:-1s,Tags:["zombieArrow","mapMob"]}
execute at @e[type=area_effect_cloud,tag=zombieArrow] positioned ^ ^ ^-2 if block ~ ~ ~ lava if block ~ ~1 ~ air run summon zombie ~ ~ ~ {Fire:-1s,Tags:["zombieArrow","mapMob"]}
execute as @e[type=area_effect_cloud,tag=zombieArrow] at @s run tp @s ~ ~ ~ ~22.5 ~
execute as @e[type=zombie,tag=zombieArrow] run data merge entity @s {Fire:-1s}

#Particle
execute at @e[type=arrow,tag=zombieArrow] run particle item rotten_flesh ~ ~ ~ 0.3 0.3 0.3 0 2