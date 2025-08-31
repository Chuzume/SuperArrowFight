#> world_manager:area/team_join_blue/
#
# チーム参加処理
#
# @within function world_manager:area/

team join Team.Blue @s
execute at @s run playsound minecraft:entity.arrow.hit_player block @s
particle dust{color:[0.2,0.5,1.0],scale:2} 492 126.2 501 1 0 1 0 25
title @s actionbar [{"fallback":"Joined the §b§nBlue Team§r !","translate":"lobby.team_join.blue"}]
