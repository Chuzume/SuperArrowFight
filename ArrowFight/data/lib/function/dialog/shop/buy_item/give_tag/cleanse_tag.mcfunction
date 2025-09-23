#> lib:dialog/shop/buy_item/give_tag/cleanse_tag
#
# 判別用のタグつけてたのを消して戻す
#
# @within function lib:dialog/shop/buy_item/give_tag/success.m

# 手持ちとはみ出し部分ををストレージに
    data modify storage lib:temp Shop.Cleanse set from entity @s Inventory
    function lib:dialog/shop/buy_item/extra/to_box
    data modify storage lib:temp Shop.Cleanse2 set from block 1 0 0 Items

# タグ消す
    data remove storage lib:temp Shop.Cleanse[{components:{"minecraft:custom_data":{Shopping:true,has_custom_data:true}}}].components."minecraft:custom_data".Shopping
    data remove storage lib:temp Shop.Cleanse[{components:{"minecraft:custom_data":{Shopping:true}}}].components."minecraft:custom_data"
    data remove storage lib:temp Shop.Cleanse[{components:{"minecraft:custom_data":{has_custom_data:true}}}].components."minecraft:custom_data".has_custom_data
    data remove storage lib:temp Shop.Cleanse2[{components:{"minecraft:custom_data":{Shopping:true,has_custom_data:true}}}].components."minecraft:custom_data".Shopping
    data remove storage lib:temp Shop.Cleanse2[{components:{"minecraft:custom_data":{Shopping:true}}}].components."minecraft:custom_data"
    data remove storage lib:temp Shop.Cleanse2[{components:{"minecraft:custom_data":{has_custom_data:true}}}].components."minecraft:custom_data".has_custom_data

# 箱に移す
    data modify block 0 0 0 Items set from storage lib:temp Shop.Cleanse
    data modify block 1 0 0 Items set from storage lib:temp Shop.Cleanse2

# 箱の中身を回収
    loot replace entity @s contents mine 0 0 0 debug_stick
    function lib:dialog/shop/buy_item/extra/to_inventory
