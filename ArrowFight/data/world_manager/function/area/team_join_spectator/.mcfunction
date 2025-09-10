#> world_manager:area/team_join_spectator/
#
# 
#
# @within function world_manager:area/

gamemode spectator
team join Team.Spectator @s
particle dust{color:[0.2,0.2,0.2],scale:2} 500 126 488 1 0 1 0 25
tp @s 500 128 521 0 22.5
execute at @s run playsound minecraft:entity.arrow.hit_player block @s
tellraw @s [{"color":"gold","text":"! "},{"color":"white","fallback":"Back to the lobby to exit spectator mode","translate":"lobby.message.how_to_end_spectator"},{"color":"gold","text":" !"},]
