#rocket arrow (night_vision arrow - "night_vision")
tag @e[type=arrow,nbt={Potion:"minecraft:night_vision"}] add rocketArrow
execute at @e[type=arrow,tag=rocketArrow,nbt={inGround:1b}] positioned ^ ^ ^0.2 run function arrows:rocket/activate
execute as @e[nbt={active_effects:[{id: "minecraft:night_vision"}]}] unless score @s rocketArrow matches 0.. at @s run function arrows:rocket/activate
effect clear @e night_vision

execute at @e[type=arrow,tag=rocketArrow] run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute as @e[type=firework_rocket,tag=rocketArrow,nbt=!{Life:0}] at @s unless block ~ ~1 ~ #arrows:firework_ignored run kill @s
execute as @a[scores={rocketArrow=0..}] at @s run function arrows:rocket/ride
effect clear @a[tag=ingame,nbt={OnGround:1b,active_effects:[{id:"minecraft:resistance"}]}] resistance