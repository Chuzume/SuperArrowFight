gamemode spectator @s

execute as @s[team=red] run summon slime ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Size:0,Tags:["tp","red"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1000,show_particles:0b}]}
execute as @s[team=blue] run summon slime ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Size:0,Tags:["tp","blue"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1000,show_particles:0b}]}

#execute as @e[type=slime,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ 0 0
spectate @e[type=slime,tag=tp,sort=nearest,limit=1]