#> world_manager:event/game/break_boat
#
# ボートは使えない…
#
# @within function world_manager:event/game/tick

# パーティクル
    particle crit ~ ~ ~ 0.2 0.2 0.2 1 25
    particle poof ~ ~ ~ 0.2 0.2 0.2 0.2 25

# サウンド
    playsound minecraft:entity.zombie.break_wooden_door neutral @a ~ ~ ~ 1 1.5

# 乗ってるヤツにメッセージ出しとく
    execute on passengers run title @s actionbar [[{"color":"dark_red","text":"! "},{"color":"white","text":"ボートが壊れた","underlined":false},{"color":"dark_red","text":" !"}]]

# 消える
    kill @s
