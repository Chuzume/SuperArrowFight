#> lib:dialog/shop/buy_item/give_tag/1.m
#
# まずリストの先頭を調べる
#
# @within function lib:dialog/shop/buy_item/

# 何番を参照すればいいんかな
    $data modify storage lib:temp Shop.Item set from storage lib: $(ActiveDialog).ShopData.BuyItemList.Item[$(ID)][0]
    $data modify storage lib:temp Shop.Count set from storage lib: $(ActiveDialog).ShopData.BuyItemList.Count[$(ID)][0]
    $data modify storage lib:temp Shop.SellItem set from storage lib: $(ActiveDialog).ShopData.SellItemList[$(ID)][0]

# 次へ移行
    function lib:dialog/shop/buy_item/give_tag/2.m with storage lib:temp Shop
