#Called when "start game" button is pressed
scoreboard players set PressedStart value 1

execute store result score playerCount value run execute if entity @a

#Can't start game
execute if score playerCount value matches ..1 run function map:spawn/start/errors/players
execute if score playerCount value matches 2.. unless entity @a[team=blue] unless entity @a[team=red] run function map:spawn/start/errors/no_team
execute if score playerCount value matches 2.. if entity @a[team=blue] unless entity @a[team=red] run function map:spawn/start/errors/red_empty
execute if score playerCount value matches 2.. if entity @a[team=red] unless entity @a[team=blue] run function map:spawn/start/errors/blue_empty
execute if score playerCount value matches 2.. if entity @a[team=blue] if entity @a[team=red] unless entity @a[team=blue,scores={health=1..}] unless entity @a[team=red,scores={health=1..}] run function map:spawn/start/errors/not_respawned
execute if score playerCount value matches 2.. if entity @a[team=blue] if entity @a[team=red] if entity @a[team=red,scores={health=1..}] unless entity @a[team=blue,scores={health=1..}] run function map:spawn/start/errors/blue_not_respawned
execute if score playerCount value matches 2.. if entity @a[team=blue] if entity @a[team=red] if entity @a[team=blue,scores={health=1..}] unless entity @a[team=red,scores={health=1..}] run function map:spawn/start/errors/red_not_respawned

#Start game
execute if score playerCount value matches 2.. if entity @a[team=blue,scores={health=1..}] if entity @a[team=red,scores={health=1..}] run function map:spawn/start/start
execute if score playerCount value matches 2.. if entity @a[team=blue,scores={health=1..}] if entity @a[team=red,scores={health=1..}] run function map:spawn/start/notify_spec