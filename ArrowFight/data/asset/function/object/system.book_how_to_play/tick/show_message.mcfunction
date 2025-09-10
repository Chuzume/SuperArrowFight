#> asset:object/system.book_how_to_play/tick/show_message
#
# 
#
# @within function asset:object/system.book_how_to_play/tick/

# サウンド
    execute on target run playsound minecraft:item.book.page_turn block @s ~ ~ ~ 1 1

# メッセージ
    execute on target run tellraw @s [{"text":" "}]
    execute on target run tellraw @s [{"color":"white","fallback":"Gather resources and buy projectiles from your team shop!","translate":"lobby.how_to_play.line_1"}]
    execute on target run tellraw @s [{"text":" "}]
    execute on target run tellraw @s [{"color":"white","fallback":"Any item marked with §6[🏹]§r can be shot with a bow,\neven if it doesn't look like an arrow!","translate":"lobby.how_to_play.line_2"}]
    execute on target run tellraw @s [{"text":" "}]
    execute on target run tellraw @s [{"color":"white","fallback":"Your health regenerates slowly,\nbut taking damage will halt it temporary.","translate":"lobby.how_to_play.line_3"}]
    execute on target run tellraw @s [{"text":" "}]
    execute on target run tellraw @s [{"color":"white","fallback":"Eliminate enemy team to win!","translate":"lobby.how_to_play.line_4"}]

# リセット
    data remove entity @s interaction
