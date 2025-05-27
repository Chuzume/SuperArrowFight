#> asset:object/system.game_start_button/tick/fail/no_player
#
# 両チームに人がいない
#
# @within function asset:object/system.game_start_button/tick/activate

# メッセージ
    tellraw @a[distance=..8] [{"color":"dark_red","text":"! "},{"color":"white","text":"両チームとも参加者がいないようです","underlined":false},{"color":"dark_red","text":" !"}]
    tellraw @a[distance=..8] [{"color":"dark_red","text":"! "},{"color":"white","text":"ゲームの開始には、それぞれのチームに最低でも1人のプレイヤーが必要です","underlined":false},{"color":"dark_red","text":" !"}]

# 演出
    particle dust{color:[0.3,0.3,0.3],scale:1} ~ ~0.2 ~ 0.1 0.1 0.1 0 5

# 失敗だあ！
    tag @s add system.game_start_button.Failed
