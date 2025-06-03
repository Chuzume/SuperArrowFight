#> world_manager:event/game/on_game/death/
#
# 倒されたプレイヤーに実行させる
#
# @within function world_manager:event/game/on_game/tick

# タグ解除
    tag @s remove GameJoinedPlayer

# チームから脱退
    team leave @s

# ゲームモードを変更
    gamemode adventure @s

# 荷物削除
    clear @s

# タイトル表示
    title @s times 0 20 10
    title @s title [{"color":"white","text":" Defeated! ","underlined":true}]
