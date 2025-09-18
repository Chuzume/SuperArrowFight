#> lib:dialog/shop/buy_item/give_tag/2.m
#
# 
#
# @within function lib:dialog/shop/buy_item/give_tag/1.m

say 2

# マクロで該当のアイテムにタグを付与、コレを消すことでカウントする
    $data modify storage lib:temp Dialog.Shop.Inventory[$(Item)].components."minecraft:custom_data".Shopping set value true
    $say data modify storage lib:temp Dialog.Shop.Inventory[$(Item)].components."minecraft:custom_data".Shopping set value true

# 箱に移す
    data modify block 511 148 491 Items set from storage lib:temp Dialog.Shop.Inventory

# 箱の中身を回収
    loot replace entity @s contents mine 511 148 491 debug_stick

# カウントする
    execute store result score $Count Temporary run clear @s *[custom_data={Shopping:true}] 0

# 個数以上だったら
#    $execute if score $Count Temporary matches $(Count).. run function lib:dialog/shop/buy_item/give_tag/success.m with storage lib:temp Shop
#    $say execute if score $Count Temporary matches $(Count).. run function lib:dialog/shop/buy_item/give_tag/success.m with storage lib:temp Shop
    $execute if score $Count Temporary matches $(Count).. run say イキスギィ！


# 個数未満、買えない
    $execute unless score $Count Temporary matches $(Count).. run say オォン！
