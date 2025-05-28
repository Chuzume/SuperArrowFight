#> world_manager:event/game/end_game/return/
#
# 帰ろう！
#
# @within function world_manager:event/game/end_game/tick

# テレポート
    tp @s 500 126 496

# タグ解除
    tag @s remove GameJoinedPlayer

# 荷物削除
    clear @s
