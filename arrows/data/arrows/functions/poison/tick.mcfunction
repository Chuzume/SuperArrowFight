#poison gas arrow (poison arrow 11 sec - "slowness")
tag @e[type=arrow,nbt={Potion:"minecraft:slowness"}] add poisonArrow
execute at @e[type=arrow,tag=poisonArrow,nbt={inGround:1b}] run function arrows:poison/activate

execute as @e[nbt={active_effects:[{id: "minecraft:slowness"}]}] at @s run function arrows:poison/activate
effect clear @e slowness

execute at @e[type=arrow,tag=poisonArrow] run particle dust 0.208 0.165 0.153 1 ~ ~ ~ 0.3 0.3 0.3 1 3 force