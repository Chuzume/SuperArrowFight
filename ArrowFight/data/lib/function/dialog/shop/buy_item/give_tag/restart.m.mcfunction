#> lib:dialog/shop/buy_item/give_tag/restart.m
#
# 
#
# @within function lib:dialog/shop/buy_item/give_tag/success.m

say 4

# 何番を参照すればいいんかな
    $data modify storage lib:temp Shop.Item set from storage lib:temp ShopData.BuyItemList.Item[$(ID)][0]
    $data modify storage lib:temp Shop.Count set from storage lib:temp ShopData.BuyItemList.Count[$(ID)][0]

# 次へ移行
    function lib:dialog/shop/buy_item/give_tag/2.m with storage lib:temp Shop
