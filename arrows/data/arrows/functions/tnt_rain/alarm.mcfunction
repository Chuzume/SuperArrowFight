scoreboard players add @e[type=armor_stand,tag=tntRain] tntRain 1
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=1}] run tellraw @a[distance=..15] [{"text":"ALARM » ","color":"dark_red","bold":"true"},{"text":"TNT is raining from the sky!","color":"red","bold":"false"}]
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=1}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=3}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=5}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=7}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=9}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=11}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=13}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=15}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=17}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=19}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=21}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 2
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=23}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1.5 1.5
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=24}] run summon tnt ~ ~50 ~ {Fuse:80s,Tags:["tntArrow","mapMob"]}
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=24}] run summon tnt ~ ~50 ~ {Fuse:78s,Tags:["tntArrow","mapMob"],Motion:[0.12,0.0,0.0]}
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=24}] run summon tnt ~ ~50 ~ {Fuse:77s,Tags:["tntArrow","mapMob"],Motion:[0.0,0.0,0.12]}
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=24}] run summon tnt ~ ~50 ~ {Fuse:76s,Tags:["tntArrow","mapMob"],Motion:[0.0,0.0,-0.12]}
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=24}] run summon tnt ~ ~50 ~ {Fuse:75s,Tags:["tntArrow","mapMob"],Motion:[-0.12,0.0,0.0]}
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=24}] run summon tnt ~ ~50 ~ {Fuse:73s,Tags:["tntArrow","mapMob"],Motion:[-0.12,0.0,-0.12]}
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=24}] run summon tnt ~ ~50 ~ {Fuse:72s,Tags:["tntArrow","mapMob"],Motion:[0.12,0.0,0.12]}
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=24}] run summon tnt ~ ~50 ~ {Fuse:71s,Tags:["tntArrow","mapMob"],Motion:[0.12,0.0,-0.12]}
execute at @e[type=armor_stand,tag=tntRain,scores={tntRain=24}] run summon tnt ~ ~50 ~ {Fuse:70s,Tags:["tntArrow","mapMob"],Motion:[-0.12,0.0,0.12]}
kill @e[type=armor_stand,tag=tntRain,scores={tntRain=24..}]