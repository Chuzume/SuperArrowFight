#> lib:dialog/shop/add_stock/m
#
# 
#
# @within function lib:dialog/shop/add_stock/

$data modify storage lib: Dialog.Shop.Body append value {"width": 32,"type":"minecraft:item","item":$(Sell),"description":{"translate":"dialog.","fallback":"[Buy]","color":"white","underlined":true,"click_event":{"action":"run_command","command":"give @s stone $(TriggerID)"},"hover_event":{"action":"show_text","value":[{"text":"","color":"white"},{"text":"| ","color":"gold"},{"translate":"required_item","fallback":"必要アイテム","color":"white"},{"text":" |","color":"gold"},{"text":"\n","color":"white"},$(BuyItemResult)]}}}

#data modify storage lib: Dialog.Shop.Hoge append 
