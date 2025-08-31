#> asset:object/system.game_start_button/tick/start/
#
# 
#
# @within function asset:object/system.game_start_button/tick/activate

# ロック
    tag @s add system.game_start_button.Lock

# メッセージ
    tellraw @a[distance=..128] [{"color":"gold","text":"! "},{"color":"white","fallback":"Start the game","translate":"lobby.message.game_start","underlined":false},{"color":"gold","text":" !"}]

# 演出
    playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 2
    particle minecraft:crit ~ ~0.2 ~ 0 0 0 0.5 20

# ゲーム開始フラグ立ててスコアを調整
    data modify storage world_manager: Game.Active set value true
    data modify storage world_manager: Game.State set value "PreStart"
    scoreboard players reset $Game Game.Tick

# ボタンを押し込む
    setblock ~ ~ ~ minecraft:stone_button[face=floor,powered=true,facing=north]
