#> lib:dialog/shop/buy_item/give_tag/success.m
#
# 
#
# @within function lib:dialog/shop/buy_item/give_tag/2.m

say 3

# 該当のアイテムを削除
    $clear @s *[custom_data={Shopping:true}] $(Count)

# 個数リセット
    scoreboard players reset $Count Temporary

# 浄化
    function lib:dialog/shop/buy_item/give_tag/cleanse_tag

# 現在の手持ちをストレージに
    data modify storage lib:temp Shop.Inventory set from entity @s Inventory

$tellraw @p {"storage":"lib:temp","nbt":"ShopData.BuyItemList.Item[$(ID)]"}

# リストの先頭を削除し、要素が残ってれば再スタート
    $data remove storage lib:temp ShopData.BuyItemList.Item[$(ID)][0]
    $data remove storage lib:temp ShopData.BuyItemList.Count[$(ID)][0]

# 要素が空なら終わり
    $execute unless data storage lib:temp ShopData.BuyItemList.Item[$(ID)][0] run say もうないね

# 再スタート
    $execute if data storage lib:temp ShopData.BuyItemList.Item[$(ID)][0] run say まだあるわね…
    $execute if data storage lib:temp ShopData.BuyItemList.Item[$(ID)][0] run function lib:dialog/shop/buy_item/give_tag/restart.m with storage lib:temp Shop
