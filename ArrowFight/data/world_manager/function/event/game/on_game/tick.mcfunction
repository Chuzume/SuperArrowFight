#> world_manager:event/game/on_game/tick
#
# 
#
# @within function world_manager:event/game/tick

# 勝利条件など
    # 赤チームがいないようなら青チームの勝ち
        execute unless entity @a[team=Team.Red,distance=..128] run function world_manager:event/game/on_game/wins/blue
    # 青チームがいないようなら赤チームの勝ち
        execute unless entity @a[team=Team.Blue,distance=..128] run function world_manager:event/game/on_game/wins/red

# 場外に出たプレイヤーは負けだ！
    execute as @a[tag=GameJoinedPlayer,predicate=!world_manager:area/battle_field/out_of_bound,distance=..128] at @s run function world_manager:event/game/on_game/out_of_bound/

# 死亡したプレイヤーに実行させる
    execute as @a[tag=GameJoinedPlayer,scores={DeathEvent=1..},distance=..128] run function world_manager:event/game/on_game/death/

# デスマッチだ～！
    execute if score $Game Game.Tick matches 9000.. run function world_manager:event/game/on_game/death_match/tick

# ボーダーを置く
    function world_manager:event/game/on_game/set_border
