#> world_manager:event/game/tick
#
# 試合中に実行されるもの
#
# @within function world_manager:event/tick

# Tick加算
    scoreboard players add $Game Game.Tick 1

# ゲームの状態で分岐
    # 開始前: テレポート処理などをやる
        execute if data storage world_manager: Game{State:"PreStart"} run function world_manager:event/game/pre_start/
    # 開始後: 試合中の処理。
        execute if data storage world_manager: Game{State:"OnGame"} run function world_manager:event/game/on_game/tick
    # 終了: 勝利チームを報告したり、プレイヤーをロビーに戻したり
        execute if data storage world_manager: Game{State:"EndGame"} run function world_manager:event/game/end_game/tick

# 思い当たるEntityにタグ付与
    tag @e[type=small_fireball,distance=..128] add VanishOnExitArena
    tag @e[type=falling_block,distance=..128] add VanishOnExitArena

# フィールドの外に飛び出た対象をキルする
    execute as @e[tag=VanishOnExitArena,predicate=!world_manager:area/battle_field/kill_object,distance=..128] at @s run function world_manager:event/game/vanish_object

# ボートを破壊する
    execute as @e[type=#minecraft:boat,predicate=world_manager:area/battle_field/no_boat,distance=..128] at @s run function world_manager:event/game/break_boat
