tag @e[type=witch,nbt={CustomName:'{"bold":true,"color":"white","text":"Shop"}'}] add witchShop

execute as @e[type=witch,tag=witchShop] run data merge entity @s {Invulnerable:1b,Silent:1b,NoAI:1b}

execute at @e[type=witch,tag=witchShop] run stopsound @a * minecraft:entity.witch.hurt

execute at @e[type=witch,tag=witchShop] run stopsound @a * minecraft:entity.witch.drink

scoreboard players add @e[type=witch,tag=witchShop] witchTimer 1

execute at @e[type=witch,tag=witchShop] run particle minecraft:witch ~ ~0.5 ~ 0.2 0.5 0.2 10 10 normal

execute at @e[type=witch,tag=witchShop,scores={witchTimer=600}] run playsound minecraft:block.brewing_stand.brew neutral @a

execute at @e[type=witch,tag=witchShop,scores={witchTimer=600}] run particle minecraft:poof ~ ~0.4 ~ 0.25 0.6 0.25 0.01 1000 normal

execute at @e[type=witch,tag=witchShop,scores={witchTimer=600}] if entity @e[type=armor_stand,tag=stay,scores={map=1}] run function map:map/set/villager

execute at @e[type=witch,tag=witchShop,scores={witchTimer=600}] if entity @e[type=armor_stand,tag=stay,scores={map=2}] run function map:map/set/villager

execute at @e[type=witch,tag=witchShop,scores={witchTimer=600}] if entity @e[type=armor_stand,tag=stay,scores={map=3}] run function map:map/set/villager

execute at @e[type=witch,tag=witchShop,scores={witchTimer=600}] if entity @e[type=armor_stand,tag=stay,scores={map=4}] run function map:map/set/villager

execute at @e[type=witch,tag=witchShop,scores={witchTimer=600}] if entity @e[type=armor_stand,tag=stay,scores={map=5}] run function map:map/set/villager

execute at @e[type=witch,tag=witchShop,scores={witchTimer=600}] if entity @e[type=armor_stand,tag=stay,scores={map=6}] run function map:map/set/villager

execute as @e[type=witch,tag=witchShop,scores={witchTimer=600}] at @s run tp @s ~ -60 ~



kill @e[type=witch,tag=witchShop,scores={witchTimer=601}]