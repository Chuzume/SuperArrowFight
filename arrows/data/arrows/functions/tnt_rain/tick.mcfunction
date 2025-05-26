#tnt rain arrow (strength arrow 22 sec - "strength")
tag @e[type=arrow,nbt={Potion:"minecraft:strength"}] add tntRainArrow
execute at @e[type=arrow,tag=tntRainArrow,nbt={inGround:1b}] run function arrows:tnt_rain/activate

execute as @e[nbt={active_effects:[{id: "minecraft:strength"}]}] at @s run function arrows:tnt_rain/activate
effect clear @e strength

execute at @e[type=arrow,tag=tntRainArrow] run particle large_smoke ~ ~ ~ 0 0 0 0 1 force
execute at @e[type=arrow,tag=tntRainArrow] run particle dust 1 0 0 1 ~ ~ ~ 1 1 1 0 5 force

function arrows:tnt_rain/alarm