#> asset:object/system.game_start_button/tick/fail/no_red
#
# 
#
# @within function asset:object/system.game_start_button/tick/activate

# メッセージ
    tellraw @a[distance=..8] [{"color":"dark_red","text":"! "},{"color":"red","text":"赤チーム","underlined":true},{"color":"white","text":"に参加者がいないようです","underlined":false},{"color":"dark_red","text":" !"}]
    tellraw @a[distance=..8] [{"color":"dark_red","text":"! "},{"color":"white","text":"ゲームの開始には、","underlined":false},{"color":"red","text":"赤チーム","underlined":true},{"color":"white","text":"に最低でも1人の参加者が必要です","underlined":false},{"color":"dark_red","text":" !"}]

# 演出
    particle dust{color:[1.0,0.2,0.2],scale:1} ~ ~0.2 ~ 0.1 0.1 0.1 0 5

# 失敗だあ！
    tag @s add system.game_start_button.Failed
