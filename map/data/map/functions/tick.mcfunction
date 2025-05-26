#gamemode adventure @a[nbt={Dimension:"minecraft:the_nether"}]

tag @e[type=!player,tag=!stay] add mapEntity
execute as @a[team=] run function map:first_join

scoreboard players set @e[type=armor_stand,name=console] playerCount 0
execute as @a run scoreboard players add @e[type=armor_stand,name=console] playerCount 1

execute as @a[scores={death=1..}] run function map:on_death
execute as @a[scores={leave=1..}] run function map:on_leave

#Map selection
function map:map/main

#Spawn functions
function map:spawn/main

#To island paths
execute as @a[tag=hasPath] at @s run function map:paths/run
tag @a remove stopPath

#Game functions
function map:game/main
function map:bossbar/main
execute if score ShowFireworks value matches 1..2 run function map:fireworks/main

function map:map/set/witch

#Animations
function map:animation/main
function map:creators_hologram



#EFFECTS

#only give regeneration if player doesn't have it
effect clear @a[scores={health=20}] minecraft:regeneration
execute as @a[scores={health=..19}] unless entity @s[nbt={active_effects:[{id: "minecraft:regeneration"}]}] run effect give @s minecraft:regeneration infinite 0 true
effect give @a minecraft:saturation infinite 100 true
#effect give @e[type=villager,tag=shop] slow_falling infinite 1 true
execute as @e[type=area_effect_cloud,tag=stay] run data merge entity @s {Duration:2147483647}


kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]
execute as @a[scores={dropBow=1..}] run give @s bow{Unbreakable:1b,HideFlags:4}
scoreboard players reset @a dropBow


scoreboard objectives modify health displayname {"text":"❤","color":"red"}
execute if entity @a[scores={ingame=1}] run scoreboard objectives setdisplay below_name health
execute unless entity @a[scores={ingame=1}] run scoreboard objectives setdisplay below_name
gamemode adventure @a[tag=inWater]

advancement grant @a only map:root
advancement grant @a[scores={streak=2..}] only map:streaker_1
advancement grant @a[scores={streak=5..}] only map:streaker_2
advancement grant @a[scores={streak=10..}] only map:streaker_3
advancement grant @a[scores={boughtBlackP=1,boughtEmeraldP=1,boughtEyeP=1,boughtPowderP=1,boughtRedP=1,boughtRocketP=1,boughtTableP=1}] only map:cosmetic_master
advancement grant @a[scores={playedOn1=1..,playedOn2=1..,playedOn3=1..,playedOn4=1..,playedOn5=1..,playedOn6=1..}] only map:adventurist


execute as @e[type=item,nbt={Item:{id:"minecraft:oak_wood"}}] run data merge entity @s {Item:{id:"minecraft:oak_log"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_wood"}}] run data merge entity @s {Item:{id:"minecraft:birch_log"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_wood"}}] run data merge entity @s {Item:{id:"minecraft:spruce_log"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_wood"}}] run data merge entity @s {Item:{id:"minecraft:acacia_log"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_wood"}}] run data merge entity @s {Item:{id:"minecraft:jungle_log"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_wood"}}] run data merge entity @s {Item:{id:"minecraft:dark_oak_log"}}


clear @a[x=485,y=139,z=471,dx=31,dy=19,dz=33] barrier{display:{Name:'{"text":"You have","color":"yellow","italic":false}'}}
clear @a[x=485,y=139,z=471,dx=31,dy=19,dz=33] sunflower{display:{Name:'{"text":"You have","color":"yellow","italic":false}'}}
clear @a[x=485,y=139,z=471,dx=31,dy=19,dz=33] nether_star{display:{Name:'{"text":"You somehow have","color":"yellow","italic":false}'}}

kill @e[type=item,nbt={Age:1200s}]
kill @e[type=item,nbt={Item:{id:"minecraft:snowball"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}},x=485,y=139,z=471,dx=31,dy=19,dz=33]
kill @e[type=item,nbt={Item:{id:"minecraft:sunflower"}},x=485,y=139,z=471,dx=31,dy=19,dz=33]
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},x=485,y=139,z=471,dx=31,dy=19,dz=33]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}},x=485,y=139,z=471,dx=31,dy=19,dz=33]
kill @e[type=item,nbt={Item:{id:"minecraft:emerald"}},x=485,y=139,z=471,dx=31,dy=19,dz=33]
kill @e[type=item,nbt={Item:{id:"minecraft:enchanting_table"}},x=485,y=139,z=471,dx=31,dy=19,dz=33]
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},x=485,y=139,z=471,dx=31,dy=19,dz=33]
kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}},x=485,y=139,z=471,dx=31,dy=19,dz=33]
kill @e[type=item,nbt={Item:{id:"minecraft:red_banner"}},x=485,y=139,z=471,dx=31,dy=19,dz=33]
kill @e[type=item,nbt={Item:{id:"minecraft:black_banner"}},x=485,y=139,z=471,dx=31,dy=19,dz=33]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone"}},x=485,y=139,z=471,dx=31,dy=19,dz=33]
