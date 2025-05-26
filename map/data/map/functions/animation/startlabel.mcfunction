scoreboard players add @e[type=armor_stand,tag=animate_start] animation 1

execute as @e[type=armor_stand,tag=animate_start,scores={animation=1..2}] run data merge entity @s {CustomName:'["",{"text":"S","color":"yellow","bold":true},{"text":"tart Game","color":"white","bold":true}]'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=3..4}] run data merge entity @s {CustomName:'["",{"text":"St","color":"yellow","bold":true},{"text":"art Game","color":"white","bold":true}]'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=5..6}] run data merge entity @s {CustomName:'["",{"text":"S","color":"white","bold":true},{"text":"ta","color":"yellow","bold":true},{"text":"rt Game","color":"white","bold":true}]'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=7..8}] run data merge entity @s {CustomName:'["",{"text":"St","color":"white","bold":true},{"text":"ar","color":"yellow","bold":true},{"text":"t Game","color":"white","bold":true}]'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=9..10}] run data merge entity @s {CustomName:'["",{"text":"Sta","color":"white","bold":true},{"text":"rt","color":"yellow","bold":true},{"text":" Game","color":"white","bold":true}]'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=11..12}] run data merge entity @s {CustomName:'["",{"text":"Star","color":"white","bold":true},{"text":"t","color":"yellow","bold":true},{"text":" Game","color":"white","bold":true}]'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=13..14}] run data merge entity @s {CustomName:'["",{"text":"Start ","color":"white","bold":true},{"text":"G","color":"yellow","bold":true},{"text":"ame","color":"white","bold":true}]'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=15..16}] run data merge entity @s {CustomName:'["",{"text":"Start","color":"white","bold":true},{"text":" Ga","color":"yellow","bold":true},{"text":"me","color":"white","bold":true}]'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=17..18}] run data merge entity @s {CustomName:'["",{"text":"Start G","color":"white","bold":true},{"text":"am","color":"yellow","bold":true},{"text":"e","color":"white","bold":true}]'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=19..20}] run data merge entity @s {CustomName:'["",{"text":"Start Ga","color":"white","bold":true},{"text":"me","color":"yellow","bold":true}]'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=21..22}] run data merge entity @s {CustomName:'["",{"text":"Start Gam","color":"white","bold":true},{"text":"e","color":"yellow","bold":true}]'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=23..33}] run data merge entity @s {CustomName:'{"text":"Start Game","color":"white","bold":true}'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=34..44}] run data merge entity @s {CustomName:'{"text":"Start Game","color":"yellow","bold":true}'}

execute as @e[type=armor_stand,tag=animate_start,scores={animation=45..55}] run data merge entity @s {CustomName:'{"text":"Start Game","color":"white","bold":true}'}

scoreboard players reset @e[type=armor_stand,tag=animate_start,scores={animation=56..}] animation