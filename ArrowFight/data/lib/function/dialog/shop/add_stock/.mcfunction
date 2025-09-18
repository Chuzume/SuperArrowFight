#> lib:dialog/shop/add_stock/
#
# 
#
# @within function lib:dialog/shop/test

# ショップのIDを設定
    data modify storage lib: Dialog.Shop.BuyItem.ActiveDialog set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ActiveDialog

# ID加算
    execute store result storage lib: Dialog.Shop.TriggerID int 1 run scoreboard players add $TriggerID Temporary 1

# マクロ実行
    function lib:dialog/shop/add_stock/m with storage lib: Dialog.Shop
    function lib:dialog/shop/add_stock/create_buy_item_list.m with storage lib: Dialog.Shop.BuyItem

# リセット
    data remove storage lib: Dialog.Shop.BuyItemResult
    data remove storage lib: Dialog.Shop.BuyItem.Count2
    data remove storage lib: Dialog.Shop.BuyItem.Contents
