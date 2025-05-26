tag @e[type=arrow,nbt={Potion:"minecraft:swiftness"}] add rainArrow
execute at @e[type=minecraft:arrow,tag=rainArrow,nbt={inGround:1b}] run summon area_effect_cloud ~ ~30 ~ {Duration:60,Tags:["arrowRain","mapMob"]}

execute as @e[nbt={active_effects:[{id: "minecraft:speed"}]}] at @s run summon area_effect_cloud ~ ~30 ~ {Duration:60,Tags:["arrowRain","mapMob"]}
effect clear @e speed

execute at @e[type=area_effect_cloud,tag=arrowRain] run function arrows:rain/spawn
execute as @e[type=arrow,tag=spread] run function arrows:rain/spread

execute at @e[type=minecraft:arrow,tag=rainArrow] run particle item arrow ~ ~ ~ 0.3 0.3 0.3 0 5 force