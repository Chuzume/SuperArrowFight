#> lib:dialog/shop/buy_item/give_item/2.m
#
# アイテムを召喚
#
# @within function lib:dialog/shop/buy_item/give_item/1.m

$summon item ~ ~ ~ {Item:$(GiveItem),Owner:$(UUID)}
