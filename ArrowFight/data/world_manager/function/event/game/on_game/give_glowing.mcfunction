#> world_manager:event/game/on_game/give_glowing
#
# 場所バレライト
#
# @within function world_manager:event/game/on_game/tick

# メッセージ
    tellraw @s [{"text":"⚠ ","color":"red"},{"text":"プレイヤーの場所が公開された","color":"white"},{"text":" ⚠","color":"red"}]

# 再生を消す
    effect give @s glowing infinite 0 true

# サウンド
    playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
    playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 1.5
