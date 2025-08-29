#> world_manager:event/game/end_game/return/
#
# 帰ろう！
#
# @within function world_manager:event/game/end_game/tick

# テレポート
    tp @s 500 126 496

# ゲームモード変更
    gamemode adventure

# ロビーモードにする
    function player_manager:mode/lobby

# エフェクト削除
    effect clear @s glowing
    effect clear @s regeneration

# タグ解除
    tag @s remove GameJoinedPlayer

# 荷物削除
    clear @s
