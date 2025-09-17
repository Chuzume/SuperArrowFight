#> lib:dialog/shop/buy_item/
#
# 
#
# @within function lib:dialog/shop/test

# テスト
    #data modify storage lib: Dialog.Shop.BuyItem set value {id: "minecraft:gold_ingot"}
    data modify storage lib: Dialog.Shop.BuyItem set from entity @s SelectedItem
# Countは消す
    data remove storage lib: Dialog.Shop.BuyItem.count

# 手持ちをストレージに
    data modify storage lib: Dialog.Shop.Inventory set from entity @s Inventory

# マクロで対象アイテムにタグ付与
    function lib:dialog/shop/buy_item/m with storage lib: Dialog.Shop
    #data modify block (シュルカーボックスの座標) Items[(ターゲットのデータ)].components."minecraft:custom_data".(カスタムタグ) set value (適当な値)
