#> lib:dialog/shop/add_stock/
#
# 
#
# @within function lib:dialog/shop/test

# ショップのIDを設定
    data modify storage lib: Shop.BuyItem.ActiveDialog set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ActiveDialog
    data modify storage lib: Shop.ActiveDialog set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ActiveDialog

# IDを設定
    execute store result storage lib: Shop.TriggerID int 1 run scoreboard players add $TriggerID Temporary 1

# マクロ実行
    function lib:dialog/shop/add_stock/m with storage lib: Shop
    function lib:dialog/shop/add_stock/create_buy_item_list.m with storage lib: Shop.BuyItem
    function lib:dialog/shop/add_stock/create_sell_item_list.m with storage lib: Shop

# リセット
    data remove storage lib: Shop.BuyItemResult
    data remove storage lib: Shop.BuyItem.Count2
    data remove storage lib: Shop.BuyItem.Contents
