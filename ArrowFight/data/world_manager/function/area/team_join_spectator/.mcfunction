#> world_manager:area/team_join_spectator/
#
# 
#
# @within function world_manager:area/

gamemode spectator
team join Team.Spectator @s
particle dust{color:[0.2,0.2,0.2],scale:2} 508 126.2 501 1 0 1 0 25
tp @s 500 128 521 0 22.5
execute at @s run playsound minecraft:entity.arrow.hit_player block @s
