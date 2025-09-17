#> lib:dialog/shop/test2
#
# 
#
# @within function lib:dialog/shop/test

data modify storage lib: Dialog.Shop.Inventory set from entity @s Inventory
data modify storage lib: Dialog.Shop.Inventory[{components: {"minecraft:item_name": {color: "gold", text: "Blade of Pizza", italic: 0b}}, count: 1, id: "minecraft:iron_sword"}].components."minecraft:custom_data".Shopping set value true
#data modify block (シュルカーボックスの座標) Items[(ターゲットのデータ)].components."minecraft:custom_data".(カスタムタグ) set value (適当な値)
data modify block 492 126 505 Items set from storage lib: Dialog.Shop.Inventory
