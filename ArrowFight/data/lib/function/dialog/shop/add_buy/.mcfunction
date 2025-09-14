#> lib:dialog/shop/add_buy/
#
# 
#
# @within function lib:dialog/shop/test

# TranslateとName両方空ならエラー出して終了
    execute unless data storage lib: Dialog.Shop.Buy.Translate unless data storage lib: Dialog.Shop.Buy.Name run tellraw @s [{"color":"red","text":"エラー :"},{"color":"white","text":"必要アイテムには最翻訳キーか名前のどちらかが必須です" }]
    execute unless data storage lib: Dialog.Shop.Buy.Translate unless data storage lib: Dialog.Shop.Buy.Name run return fail

# 個数未設定なら1にすっけどよ…
    execute unless data storage lib: Dialog.Shop.Buy.Count run data modify storage lib: Dialog.Shop.Buy.Count set value 1

# TranslateとNameがなければ空データ指定する
    execute unless data storage lib: Dialog.Shop.Buy.Translate run data modify storage lib: Dialog.Shop.Buy.Translate set value ""
    execute unless data storage lib: Dialog.Shop.Buy.Name run data modify storage lib: Dialog.Shop.Buy.Name set value ""

# マクロ実行
    function lib:dialog/shop/add_buy/m with storage lib: Dialog.Shop.Buy
