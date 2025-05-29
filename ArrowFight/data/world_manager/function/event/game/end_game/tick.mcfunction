#> world_manager:event/game/end_game/tick
#
# 
#
# @within function world_manager:event/game/tick

# タイトル表示
    execute if score $Game Game.Tick matches 40.. if data storage world_manager: Game{WinTeam:"Blue"} as @a[distance=..128] run function world_manager:event/game/end_game/title/blue/
    execute if score $Game Game.Tick matches 40.. if data storage world_manager: Game{WinTeam:"Red"} as @a[distance=..128] run function world_manager:event/game/end_game/title/red/

# しばらくすると帰る
    execute if score $Game Game.Tick matches 80 as @a[tag=GameJoinedPlayer,distance=..128] at @s run function world_manager:event/game/end_game/return/

# 完全に終わり！片付けとかする
    execute if score $Game Game.Tick matches 80 run function world_manager:event/game/end_game/setdata
