#> lib:dialog/shop/buy_item/give_tag/cleanse_tag
#
# 判別用のタグつけてたのを消して戻す
#
# @within function lib:dialog/shop/buy_item/give_tag/success.m

# 手持ちをストレージに
    data modify storage lib:temp Shop.Cleanse set from entity @s Inventory

# タグ消す
    data remove storage lib:temp Shop.Cleanse[{components:{"minecraft:custom_data":{Shopping:true}}}].components."minecraft:custom_data".Shopping

# 箱に移す
    data modify block 511 148 491 Items set from storage lib:temp Shop.Cleanse

# 箱の中身を回収
    loot replace entity @s contents mine 511 148 491 debug_stick
