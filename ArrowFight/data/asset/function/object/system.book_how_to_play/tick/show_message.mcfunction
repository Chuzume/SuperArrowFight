#> asset:object/system.book_how_to_play/tick/show_message
#
# 
#
# @within function asset:object/system.book_how_to_play/tick/

# サウンド
    playsound minecraft:item.book.page_turn block @a ~ ~ ~ 1 1

# メッセージ
    tellraw @a[distance=..8] [{"text":" "}]
    tellraw @a[distance=..8] [{"color":"white","fallback":"Gather resources and buy projectiles from your team shop!","translate":"lobby.how_to_play.line_1"}]
    tellraw @a[distance=..8] [{"text":" "}]
    tellraw @a[distance=..8] [{"color":"white","fallback":"Any item marked with §6[🏹]§r can be shot with a bow,\neven if it doesn't look like an arrow!","translate":"lobby.how_to_play.line_2"}]
    tellraw @a[distance=..8] [{"text":" "}]
    tellraw @a[distance=..8] [{"color":"white","fallback":"Your health regenerates slowly,\nbut taking damage will halt it temporary.","translate":"lobby.how_to_play.line_3"}]
    tellraw @a[distance=..8] [{"text":" "}]
    tellraw @a[distance=..8] [{"color":"white","fallback":"Eliminate enemy team to win!","translate":"lobby.how_to_play.line_4"}]

# リセット
    data remove entity @s interaction
