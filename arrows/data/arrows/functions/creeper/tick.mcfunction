#creeper apocalypse arrow (conduit power)
execute as @e[type=arrow,nbt={custom_potion_effects:[{id:"minecraft:conduit_power"}]}] run tag @s add creeperArrow
execute at @e[type=arrow,tag=creeperArrow,nbt={inGround:1b}] run summon area_effect_cloud ~ ~1 ~ {Duration:4,Tags:["creeperArrow","mapMob"]}

execute as @e[nbt={active_effects:[{id: "minecraft:conduit_power"}]}] at @s run summon area_effect_cloud ~ ~1 ~ {Duration:4,Tags:["creeperArrow","mapMob"]}
effect clear @e conduit_power

#Middle creeper
execute at @e[type=area_effect_cloud,tag=creeperArrow,tag=!init] run summon creeper ~ ~ ~ {Tags:["creeperArrow","mapMob"]}
tag @e[type=area_effect_cloud,tag=creeperArrow] add init

#Creepers on each side (runs 4 times)
execute at @e[type=area_effect_cloud,tag=creeperArrow] positioned ^ ^ ^2 if block ~ ~ ~ air if block ~ ~1 ~ air run summon creeper ~ ~ ~ {Tags:["creeperArrow","mapMob"]}
execute at @e[type=area_effect_cloud,tag=creeperArrow] positioned ^ ^ ^2 if block ~ ~ ~ water if block ~ ~1 ~ air run summon creeper ~ ~ ~ {Tags:["creeperArrow","mapMob"]}
execute at @e[type=area_effect_cloud,tag=creeperArrow] positioned ^ ^ ^2 if block ~ ~ ~ lava if block ~ ~1 ~ air run summon creeper ~ ~ ~ {Tags:["creeperArrow","mapMob"]}
execute as @e[type=area_effect_cloud,tag=creeperArrow] at @s run tp @s ~ ~ ~ ~90 ~

#Particles
execute at @e[type=arrow,tag=creeperArrow] run particle minecraft:totem_of_undying ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute at @e[type=arrow,tag=creeperArrow] run particle dust 0 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 4 force