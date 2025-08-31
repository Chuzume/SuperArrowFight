#> asset:object/system.game_start_button/tick/fail/no_blue
#
# 
#
# @within function asset:object/system.game_start_button/tick/activate

# メッセージ
    tellraw @a[distance=..8] [{"color":"dark_red","text":"! "},{"color":"white","fallback":"There are no player on the §b§nblue team§r","translate":"error.no_blue_team.line_1","underlined":false},{"color":"dark_red","text":" !"}]
    tellraw @a[distance=..8] [{"color":"dark_red","text":"! "},{"color":"white","fallback":"§b§nBlue team§r must have at least one player to start the game","translate":"error.no_blue_team.line_2","underlined":false},{"color":"dark_red","text":" !"}]

# 演出
    particle dust{color:[0.2,0.5,1.0],scale:1} ~ ~0.2 ~ 0.1 0.1 0.1 0 5

# 失敗だあ！
    tag @s add system.game_start_button.Failed
