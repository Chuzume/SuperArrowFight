#> lib:dialog/shop/add_button.m
#
# 
#
# @within function lib:dialog/shop/test

$data modify storage lib: Dialog.Shop.Body append value {"type":"minecraft:item","item":$(sell),"description":{"translate":"dialog.","fallback":"[Buy]","color":"white","underlined":true,"hover_event":{"action":"show_text","value":{"text":"huh..."}}}}
