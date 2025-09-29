#> asset:object/system.book_credit/on_interact/
#
# 継承先などから実行される処理
#
# @within asset_manager:object/call_method/run_method.m

# サウンド
    execute on target run playsound minecraft:item.book.page_turn block @s ~ ~ ~ 1 1

# メッセージ
    execute on target run dialog show @s asset:credit

# リセット
    data remove entity @s interaction
