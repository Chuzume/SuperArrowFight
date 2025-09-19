#> lib:dialog/shop/add_buy/
#
# 
#
# @within function lib:dialog/shop/test

# 個数データは必要ないので消す
    data remove storage lib: Shop.BuyItem.Item.count
# ContentにAppend
    data modify storage lib: Shop.BuyItem.Contents append from storage lib: Shop.BuyItem.Item

# 個数未設定なら1にすっけどよ…
    execute unless data storage lib: Shop.BuyItem.Count run data modify storage lib: Shop.BuyItem.Count set value 1

# 個数を積む
    data modify storage lib: Shop.BuyItem.Count2 append from storage lib: Shop.BuyItem.Count
    data modify storage test: Shop.BuyItem.Count2 append from storage lib: Shop.BuyItem.Count

# item_nameコンポーネントを移す
    data modify storage lib: Shop.BuyItem.Name set from storage lib: Shop.BuyItem.components."minecraft:custom_name"

# マクロ実行
    execute if data storage lib: Shop.BuyItem.Translate run function lib:dialog/shop/add_buy/translate.m with storage lib: Shop.BuyItem
    execute unless data storage lib: Shop.BuyItem.Translate run function lib:dialog/shop/add_buy/name.m with storage lib: Shop.BuyItem

# リセット
    data remove storage lib: Shop.BuyItem.Translate
    data remove storage lib: Shop.BuyItem.Name
