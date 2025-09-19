#> lib:dialog/shop/buy_item/give_item/1.m
#
# 
#
# @within function lib:dialog/shop/buy_item/

$data modify storage lib:temp Shop.GiveItem set from storage lib: $(ActiveDialog).ShopData.SellItemList[$(ID)]
data modify storage lib:temp Shop.UUID set from entity @s UUID
function lib:dialog/shop/buy_item/give_item/2.m with storage lib:temp Shop
