#> world_manager:event/game/pre_start/
#
# 試合前の転送とか。
#
# @within function world_manager:event/game/tick

# チーム参加してる対象にタグを付与
    execute if score $Game Game.Tick matches 1 run tag @a[team=Team.Blue,distance=..128] add GameJoinedPlayer
    execute if score $Game Game.Tick matches 1 run tag @a[team=Team.Red,distance=..128] add GameJoinedPlayer

# 参加者をフワ～っとさせる
    execute if score $Game Game.Tick matches 40 as @a[tag=GameJoinedPlayer,distance=..128] at @s run function world_manager:event/game/pre_start/levitation

# 頂点辺りで転送
    execute if score $Game Game.Tick matches 80 as @a[tag=GameJoinedPlayer,distance=..128] at @s run function world_manager:event/game/pre_start/teleport

# 村人を召喚する
    execute if score $Game Game.Tick matches 80 run function world_manager:event/game/pre_start/summon_trader

# 村人が光る
    execute if score $Game Game.Tick matches 80 run effect give @e[type=wandering_trader,tag=Mob.trader.arrow_shop] glowing 2 0

# 試合開始の合図をしろ！
    # カウントダウン
        execute if score $Game Game.Tick matches 100 as @a[tag=GameJoinedPlayer,distance=..128] at @s run function world_manager:event/game/pre_start/title/3
        execute if score $Game Game.Tick matches 120 as @a[tag=GameJoinedPlayer,distance=..128] at @s run function world_manager:event/game/pre_start/title/2
        execute if score $Game Game.Tick matches 140 as @a[tag=GameJoinedPlayer,distance=..128] at @s run function world_manager:event/game/pre_start/title/1
    # Game Start
        execute if score $Game Game.Tick matches 160 as @a[tag=GameJoinedPlayer,distance=..128] at @s run function world_manager:event/game/pre_start/title/start/first
        execute if score $Game Game.Tick matches 160 as @a[tag=GameJoinedPlayer,distance=..128] run function world_manager:event/game/pre_start/title/start/1
        execute if score $Game Game.Tick matches 161 as @a[tag=GameJoinedPlayer,distance=..128] run function world_manager:event/game/pre_start/title/start/2
        execute if score $Game Game.Tick matches 162 as @a[tag=GameJoinedPlayer,distance=..128] run function world_manager:event/game/pre_start/title/start/3
        execute if score $Game Game.Tick matches 163 as @a[tag=GameJoinedPlayer,distance=..128] run function world_manager:event/game/pre_start/title/start/4
        execute if score $Game Game.Tick matches 164 as @a[tag=GameJoinedPlayer,distance=..128] run function world_manager:event/game/pre_start/title/start/5
        execute if score $Game Game.Tick matches 165 as @a[tag=GameJoinedPlayer,distance=..128] run function world_manager:event/game/pre_start/title/start/6
        execute if score $Game Game.Tick matches 166 as @a[tag=GameJoinedPlayer,distance=..128] run function world_manager:event/game/pre_start/title/start/7

# タイトル演出やったら、ストレージデータを「試合中」にする
        execute if score $Game Game.Tick matches 166 run function world_manager:event/game/pre_start/title/start/set_data
