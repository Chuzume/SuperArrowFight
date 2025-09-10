#> world_manager:area/
#
# エリア管理
#
# @within function core:tick/player/

# 各エリア処理
#    execute if predicate world_manager:area/00.tutorial run function world_manager:area/00.tutorial/
#    execute if predicate world_manager:area/01.god_boundaries run function world_manager:area/01.god_boundaries/
#    execute if predicate world_manager:area/02.islands run function world_manager:area/02.islands/
#    execute if predicate world_manager:area/03.arena run function world_manager:area/03.arena/
#    execute if predicate world_manager:area/10.nether run function world_manager:area/10.nether/
#    execute if predicate world_manager:area/20.end run function world_manager:area/20.end/

# 各エリア処理
    # 赤チーム参加
        execute unless data storage world_manager: Game{Active:true} if predicate world_manager:area/team_join_red unless entity @s[team=Team.Red] run function world_manager:area/team_join_red/
    # 青チーム参加
        execute unless data storage world_manager: Game{Active:true} if predicate world_manager:area/team_join_blue unless entity @s[team=Team.Blue] run function world_manager:area/team_join_blue/
    # 観戦モード解除
        execute if entity @s[team=Team.Spectator] if predicate world_manager:area/lobby run function world_manager:area/end_spectator
        execute if entity @s[team=Team.Spectator] unless predicate world_manager:area/end_spectator run function world_manager:area/end_spectator
    # 観戦チーム参加
        execute if predicate world_manager:area/team_join_spectator run function world_manager:area/team_join_spectator/
