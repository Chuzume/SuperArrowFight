#> world_manager:event/game/on_game/clear_regeneration
#
# 再生オフ
#
# @within function world_manager:event/game/on_game/tick

# メッセージ
    tellraw @s [{"text":"⚠ ","color":"red"},{"text":"体力が自然回復しなくなった","color":"white"},{"text":" ⚠","color":"red"}]

# 再生を消す
    effect clear @s regeneration

# サウンド
    playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
    playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 1.5
