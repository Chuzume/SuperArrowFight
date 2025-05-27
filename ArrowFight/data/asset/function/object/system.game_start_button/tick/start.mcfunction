#> asset:object/system.game_start_button/tick/start
#
# 
#
# @within function asset:object/system.game_start_button/tick/activate

# ロック
    tag @s add system.game_start_button.Lock

# メッセージ
    tellraw @a[distance=..64] [{"color":"gold","text":"! "},{"color":"white","text":"ゲームを開始します","underlined":false},{"color":"gold","text":" !"}]

# 演出
    playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 2
    particle minecraft:crit ~ ~0.2 ~ 0 0 0 0.5 20

# ボタンを押し込む
    setblock ~ ~ ~ minecraft:stone_button[face=floor,powered=true,facing=north]
