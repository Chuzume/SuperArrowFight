#> lib:dialog/shop/buy_item/give_tag/success.m
#
# 
#
# @within function lib:dialog/shop/buy_item/give_tag/2.m

say 3

# 該当のアイテムを削除
    $clear @s *[custom_data={Shopping:true}] $(Count)

# 浄化

# リストの先頭を削除し、要素が残ってれば再スタート
    $data remove storage lib:temp ShopData.BuyItemList.Item[$(ID)][0]
    $data remove storage lib:temp ShopData.BuyItemList.Count[$(ID)][0]
    $execute if data storage lib:temp ShopData.BuyItemList.Item[$(ID)][0] run say まだあるわね…
    $execute if data storage lib:temp ShopData.BuyItemList.Item[$(ID)][0] run function lib:dialog/shop/buy_item/give_tag/restart.m with storage lib:temp Shop
