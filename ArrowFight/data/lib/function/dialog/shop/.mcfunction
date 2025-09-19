#> lib:dialog/shop/
#
# 
#
# @within function lib:dialog/shop/test

# トリガーを有効化
    scoreboard players enable @s Trigger.DialogShop

# ダイアログ表示
    function lib:dialog/shop/show_dialog.m with storage lib: Shop

# リセット
    data remove storage lib: Shop
    scoreboard players reset $TriggerID Temporary
