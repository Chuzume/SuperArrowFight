#> asset:object/system.book_how_to_play/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 触れられると発動
    execute if data entity @s interaction run function asset:object/system.book_how_to_play/tick/show_message
