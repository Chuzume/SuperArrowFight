#> lib:dialog/shop/buy_item/m
#
# 
#
# @within function lib:dialog/shop/buy_item/

# マクロで該当のアイテムにタグを付与、コレを消すことでカウントする
    $data modify storage lib: Dialog.Shop.Inventory[$(BuyItem)].components."minecraft:custom_data".Shopping set value true

# 箱に移す
    data modify block 0 0 0 Items set from storage lib: Dialog.Shop.Inventory

# 箱の中身を回収
    loot replace entity @s contents mine 0 0 0 debug_stick

# カウントする
    execute store result score $Count Test run clear @s *[custom_data={Shopping:true}] 5
