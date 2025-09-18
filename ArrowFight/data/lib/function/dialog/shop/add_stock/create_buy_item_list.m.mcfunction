#> lib:dialog/shop/add_stock/create_buy_item_list.m
#
# 
#
# @within function lib:dialog/shop/add_stock/

$data modify storage lib: $(ActiveDialog).ShopData.BuyItemList.Item append value $(Contents)
$data modify storage lib: $(ActiveDialog).ShopData.BuyItemList.Count append value $(Count2)
