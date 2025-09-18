#> lib:dialog/shop/buy_item/
#
# 
#
# @within function lib:dialog/shop/test

# テスト
#   modify storage lib: Dialog.Shop.BuyItem set value {id: "minecraft:gold_ingot"}
#    data modify storage lib: Dialog.Shop.BuyItem set from entity @s SelectedItem
#    data modify storage lib: Dialog.Shop.BuyItem set from storage test: Dialog.Shop.BuyItemList[0]

# Countは消す
    data remove storage lib:temp Dialog.Shop.BuyItem.count

# 手持ちをストレージに
    data modify storage lib:temp Dialog.Shop.Inventory set from entity @s Inventory

# 
    data modify storage lib:temp Shop.ShopData set from storage lib: Dialog.ShopData

# トリガーが何番だったか確認
# 今はテストなので固定
    execute store result storage lib:temp Shop.ID int 1 run scoreboard players set $Temp Temporary 1

# マクロで対象アイテムにタグ付与
    function lib:dialog/shop/buy_item/give_tag/1.m with storage lib:temp Shop

    #data modify block (シュルカーボックスの座標) Items[(ターゲットのデータ)].components."minecraft:custom_data".(カスタムタグ) set value (適当な値)

# マクロで対象アイテムにタグ付与
#    function lib:dialog/shop/buy_item/m with storage lib: Dialog.ShopData
