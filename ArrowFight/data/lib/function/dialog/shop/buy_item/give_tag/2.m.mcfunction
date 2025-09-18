#> lib:dialog/shop/buy_item/give_tag/2.m
#
# 
#
# @within function lib:dialog/shop/buy_item/give_tag/1.m

say 2


# マクロで該当のアイテムにタグを付与、あとでコレを消すことでカウントす
# そのアイテムを持っているかチェックしておかないと、持ってない場合一個渡されてしまう
$execute if data storage lib:temp Shop.Inventory[$(Item)] run say アイテムあるよ(笑)
$execute if data storage lib:temp Shop.Inventory[$(Item)] run data modify storage lib:temp Shop.Inventory[$(Item)].components."minecraft:custom_data".Shopping set value true


#tellraw @p {"nbt":"Shop.Inventory","storage":"lib:temp"}

# 箱に移す
    data modify block 511 148 491 Items set from storage lib:temp Shop.Inventory

# 箱の中身を回収
    loot replace entity @s contents mine 511 148 491 debug_stick

#tellraw @p {"entity":"@s","nbt":"Inventory"}

# カウントする
    execute store result score $Count Temporary run clear @s *[custom_data={Shopping:true}] 0

# 個数未満、買えない
    $execute unless score $Count Temporary matches $(Count).. run function lib:dialog/shop/buy_item/give_tag/failure
    $execute unless score $Count Temporary matches $(Count).. run return fail

# 個数以上だったら
    $execute if score $Count Temporary matches $(Count).. run function lib:dialog/shop/buy_item/give_tag/success.m with storage lib:temp Shop
