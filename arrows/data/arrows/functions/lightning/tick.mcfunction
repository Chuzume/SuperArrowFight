#lightning storm arrow (slow falling arrow 11 sec - "slow_falling")

tag @e[type=arrow,nbt={Potion:"minecraft:slow_falling"}] add lightningArrow

execute at @e[type=arrow,tag=lightningArrow,nbt={inGround:1b}] run function arrows:lightning/activate



execute as @e[nbt={active_effects:[{id: "minecraft:slow_falling"}]}] at @s run function arrows:lightning/activate

effect clear @e slow_falling



execute at @e[type=arrow,tag=lightningArrow] run particle end_rod ~ ~ ~ 0.4 0.4 0.4 0.01 4 force