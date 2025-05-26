tag @e[type=arrow,nbt={Potion:"minecraft:fire_resistance"}] add fireArrow 

execute as @e[tag=fireArrow] run data merge entity @s {Fire:2000s}

execute at @e[type=arrow,tag=fireArrow,nbt={inGround:1b}] run function arrows:fire/activate



execute as @e[type=!witch,nbt={active_effects:[{id: "minecraft:fire_resistance"}]}] at @s run function arrows:fire/activate

effect clear @e fire_resistance



execute at @e[type=arrow,tag=fireArrow] run particle flame ~ ~ ~ 0.4 0.4 0.4 0.01 4 force