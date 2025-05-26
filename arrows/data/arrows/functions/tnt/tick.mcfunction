#tnt arrow (water breathing 1 arrow - "water_breathing")
tag @e[type=arrow,nbt={Potion:"minecraft:water_breathing"}] add tntArrow
execute at @e[type=arrow,tag=tntArrow,nbt={inGround:1b}] run function arrows:tnt/activate
execute as @e[nbt={active_effects:[{id: "minecraft:water_breathing"}]}] at @s run function arrows:tnt/activate
effect clear @e water_breathing

execute at @e[type=tnt,tag=tntArrow] run particle flame ~ ~ ~ 1 1 1 0.05 2 force
execute at @e[type=arrow,tag=tntArrow] run particle large_smoke ~ ~ ~ 0 0 0 0 1 force

