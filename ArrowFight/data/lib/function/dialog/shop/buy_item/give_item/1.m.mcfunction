#> lib:dialog/shop/buy_item/give_item/1.m
#
# 
#
# @within function lib:dialog/shop/buy_item/

# サウンド
    playsound minecraft:block.note_block.xylophone ui @s ~ ~ ~ 2 1.5

# マクロでデータ指定、次に移行
    $data modify storage lib:temp Shop.GiveItem set from storage lib: $(ActiveDialog).ShopData.SellItemList[$(ID)]
    data modify storage lib:temp Shop.UUID set from entity @s UUID
    function lib:dialog/shop/buy_item/give_item/2.m with storage lib:temp Shop

# 浄化
    function lib:dialog/shop/buy_item/give_tag/cleanse_tag
