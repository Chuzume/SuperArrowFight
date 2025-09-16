#> lib:dialog/shop/add_buy/
#
# 
#
# @within function lib:dialog/shop/test

# 個数未設定なら1にすっけどよ…
    execute unless data storage lib: Dialog.Shop.BuyItem.Count run data modify storage lib: Dialog.Shop.BuyItem.Count set value 1

# item_nameコンポーネントを移す
    data modify storage lib: Dialog.Shop.BuyItem.Name set from storage lib: Dialog.Shop.BuyItem.components."minecraft:custom_name"

# マクロ実行
    execute if data storage lib: Dialog.Shop.BuyItem.Translate run function lib:dialog/shop/add_buy/translate.m with storage lib: Dialog.Shop.BuyItem
    execute unless data storage lib: Dialog.Shop.BuyItem.Translate run function lib:dialog/shop/add_buy/name.m with storage lib: Dialog.Shop.BuyItem
