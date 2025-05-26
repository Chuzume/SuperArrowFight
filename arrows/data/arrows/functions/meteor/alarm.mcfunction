scoreboard players add @e[type=armor_stand,tag=meteor] meteor 1

execute at @e[type=armor_stand,tag=meteor,scores={meteor=1}] run tellraw @a[distance=..15] [{"text":"ALARM » ","color":"dark_red","bold":"true"},{"text":"Meteor incoming!","color":"red","bold":"false"}]

execute at @e[type=armor_stand,tag=meteor,scores={meteor=1}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=3}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=5}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=7}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=9}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=11}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=13}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=15}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=17}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=19}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=21}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=23}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=25}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=27}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=29}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=30}] run summon fireball ~ ~100 ~ {power:[0d,-0.2d,0d],ExplosionPower:8,Tags:["mapMob","meteor"]}

execute at @e[type=armor_stand,tag=meteor,scores={meteor=31}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=33}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=35}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=37}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=39}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=41}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=43}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=45}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=47}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=49}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=51}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=53}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=55}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

execute at @e[type=armor_stand,tag=meteor,scores={meteor=57}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2

execute at @e[type=armor_stand,tag=meteor,scores={meteor=59}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5

#execute at @e[type=armor_stand,tag=meteor,scores={meteor=60}] run summon fireball ~ ~40 ~ {direction:[0.0,-2.5,0.0],ExplosionPower:8,Tags:["mapMob","meteor"]}

kill @e[type=armor_stand,tag=meteor,scores={meteor=60..}]