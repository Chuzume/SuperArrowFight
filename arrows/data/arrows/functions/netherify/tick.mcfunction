#nether corruption arrow (dolphins grace 1 - "dolphins_grace")
execute as @e[type=arrow,tag=!netherArrow,nbt={custom_potion_effects:[{id:"minecraft:dolphins_grace"}]}] at @s run function arrows:netherify/init
execute as @e[type=arrow,tag=netherArrow,nbt={inGround:1b}] at @s run function arrows:netherify/activate

execute as @e[nbt={active_effects:[{id: "minecraft:dolphins_grace"}]}] at @s run function arrows:netherify/activate
effect clear @e dolphins_grace

execute at @e[type=arrow,tag=netherArrow] run particle flame ~ ~ ~ 0.2 0.2 0.2 0.01 2 force
execute at @e[type=arrow,tag=netherArrow] run particle block netherrack ~ ~ ~ 0.3 0.3 0.3 0 3 force