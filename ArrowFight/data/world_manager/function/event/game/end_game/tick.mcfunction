#> world_manager:event/game/end_game/tick
#
# 
#
# @within function world_manager:event/game/tick

# タイトル表示
    execute if data storage world_manager: Game{WinTeam:"Blue"} as @a[distance=..128] run function world_manager:event/game/end_game/title/blue/
    execute if data storage world_manager: Game{WinTeam:"Red"} as @a[distance=..128] run function world_manager:event/game/end_game/title/red/

# しばらくすると帰る
    execute if score $Game Game.Tick matches 60 as @a[tag=GameJoinedPlayer,distance=..128] at @s run function world_manager:event/game/end_game/return/

# データを終了後
    execute if score $Game Game.Tick matches 60 run function world_manager:event/game/end_game/setdata
