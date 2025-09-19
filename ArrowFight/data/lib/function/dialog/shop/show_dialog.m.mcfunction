#> lib:dialog/shop/show_dialog.m
#
# 与えられたデータを元にダイアログを表示
#
# @within function lib:dialog/shop/

$dialog show @s {"type":"minecraft:notice","title":{"text":"HogeHoge"},"body":$(Body),"can_close_with_escape":true,"pause":false,"after_action":"none","action":{"label":{"text":"Close"},"action":{"type":"minecraft:run_command","command":"trigger Trigger.DialogShop set -1"}}}
