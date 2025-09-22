#> lib:dialog/shop/buy_item/give_tag/2.m
#
# 
#
# @within function lib:dialog/shop/buy_item/give_tag/1.m

# マクロで該当のアイテムにタグを付与、あとでコレを消すことでカウントする
# そのアイテムを持っているかチェックしておかないと、持ってない場合一個渡されてしまう
    $execute if data storage lib:temp Shop.Inventory[$(Item)] run data modify storage lib:temp Shop.Inventory[{components:{"minecraft:custom_data":{}}}].components."minecraft:custom_data".has_cusotm_data set value true
    $execute if data storage lib:temp Shop.Inventory[$(Item)] run data modify storage lib:temp Shop.Inventory[$(Item)].components."minecraft:custom_data".Shopping set value true
    $execute if data storage lib:temp Shop.Inventory2[$(Item)] run data modify storage lib:temp Shop.Inventory[{components:{"minecraft:custom_data":{}}}].components."minecraft:custom_data".has_cusotm_data set value true
    $execute if data storage lib:temp Shop.Inventory2[$(Item)] run data modify storage lib:temp Shop.Inventory2[$(Item)].components."minecraft:custom_data".Shopping set value true

# 箱に移す
    data modify block 0 0 0 Items set from storage lib:temp Shop.Inventory
    data modify block 1 0 0 Items set from storage lib:temp Shop.Inventory2

# 箱の中身を回収
    loot replace entity @s contents mine 0 0 0 debug_stick
    function lib:dialog/shop/buy_item/extra/to_inventory

#tellraw @p {"entity":"@s","nbt":"Inventory"}

# カウントする
    execute store result score $Count Temporary run clear @s *[custom_data~{Shopping:true}] 0

# 個数未満、買えない
    $execute unless score $Count Temporary matches $(Count).. run function lib:dialog/shop/buy_item/give_tag/failure/
    $execute unless score $Count Temporary matches $(Count).. run return fail

# 個数以上だったら
    $execute if score $Count Temporary matches $(Count).. run function lib:dialog/shop/buy_item/give_tag/success.m with storage lib:temp Shop
