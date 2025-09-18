#> lib:dialog/shop/add_stock/
#
# 
#
# @within function lib:dialog/shop/test

# テスト
    #data modify storage lib: Dialog.Shop.BuyItemResult set from storage test: Test.Item.Hoge

# マクロ実行
    function lib:dialog/shop/add_stock/m with storage lib: Dialog.Shop
    function lib:dialog/shop/add_stock/create_buy_item_list.m with storage lib: Dialog.Shop.BuyItem

# リセット
    data remove storage lib: Dialog.Shop.BuyItemResult
    data remove storage lib: Dialog.Shop.BuyItem.Count2
    data remove storage lib: Dialog.Shop.BuyItem.Contents
