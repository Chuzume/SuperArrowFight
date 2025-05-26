#> world_manager:area/team_join_red/
#
# チーム参加処理
#
# @within function world_manager:area/

team join Team.Red @s
execute at @s run playsound minecraft:entity.arrow.hit_player block @s
particle dust{color:[1.0,0.2,0.2],scale:2} 508 126.2 501 1 0 1 0 25
title @s actionbar [{"text":"赤チーム","color":"red","underlined":true},{"text":"に参加しました！","color":"white","underlined":false},]
