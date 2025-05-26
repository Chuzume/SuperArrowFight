execute if entity @a[scores={ingame=1}] run bossbar set map:event players
execute unless entity @a[scores={ingame=1}] run bossbar set map:event players @a

#store score
execute store result bossbar map:event value run scoreboard players get @e[type=armor_stand,name=console,limit=1] bv

#lobby displays
execute if entity @e[type=armor_stand,name=console,scores={playerCount=..1}] run function map:bossbar/not_enough_players
execute if entity @e[type=armor_stand,name=console,scores={playerCount=2..}] unless entity @a[team=red] run function map:bossbar/red_empty
execute if entity @e[type=armor_stand,name=console,scores={playerCount=2..}] unless entity @a[team=blue] run function map:bossbar/blue_empty
execute if entity @e[type=armor_stand,name=console,scores={playerCount=2..}] unless entity @a[team=red] unless entity @a[team=blue] run function map:bossbar/unfilled_teams
execute if entity @e[type=armor_stand,name=console,scores={playerCount=2..}] if entity @a[team=red] if entity @a[team=blue] run function map:bossbar/ready