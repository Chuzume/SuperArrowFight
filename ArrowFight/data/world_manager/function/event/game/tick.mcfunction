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

# フィールドの外に飛び出た対象をキルする
    execute as @e[tag=VanishOnExitArena,predicate=!world_manager:area/battle_field,distance=..128] at @s run function world_manager:event/game/vanish_object
