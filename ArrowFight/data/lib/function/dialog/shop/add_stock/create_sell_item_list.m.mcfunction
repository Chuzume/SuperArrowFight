#> lib:dialog/shop/add_stock/create_sell_item_list.m
#
# 
#
# @within function lib:dialog/shop/add_stock/

$data modify storage lib: $(ActiveDialog).ShopData.SellItemList append value $(SellItem)
