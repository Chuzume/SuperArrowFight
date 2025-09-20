#> lib:dialog/shop/add_stock/m
#
# 
#
# @within function lib:dialog/shop/add_stock/

$data modify storage lib:temp Shop.Body set value {"type":"minecraft:item","item":$(SellItem),"description":$(BuyButton),"width":32}
$data modify storage lib:temp Shop.Body.description[0]."click_event" set value {"action":"run_command","command":"trigger Trigger.DialogShop set $(TriggerID)"}
$data modify storage lib:temp Shop.Body.description[0]."hover_event" set value {"action":"show_text","value":[{"text":"","color":"white"},{"text":"| ","color":"gold"},{"translate":"required_item","fallback":"必要アイテム","color":"white"},{"text":" |","color":"gold"},{"text":"\n","color":"white"},$(BuyItemResult)]}
data modify storage lib:temp Shop.Body.description append value {"text":"    ","underlined":false,"hover_event":{"action":"show_text","value":{"text":""}}}
data modify storage lib: Shop.Body append from storage lib:temp Shop.Body
data remove storage lib:temp Shop
