#> lib:dialog/shop/add_stock/
#
# 
#
# @within function lib:dialog/shop/test

# テスト
    data modify storage lib: Dialog.Shop.BuyItemResult set from storage test: Test.Item.Hoge

# マクロ実行
    function lib:dialog/shop/add_stock/m with storage lib: Dialog.Shop

# リセット
    data remove storage lib: Dialog.Shop.BuyItemResult
