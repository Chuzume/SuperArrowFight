#> lib:dialog/shop/test_buy
#
# 
#
# @within function lib:dialog/shop/test

    # 必要なアイテムを設定
        data modify storage lib: Dialog.Shop.Buy.Translate set value "item.minecraft.gold_ingot"
        function lib:dialog/shop/add_buy/

        data modify storage lib: Dialog.Shop.Buy.Translate set value "item.minecraft.iron_ingot"
        function lib:dialog/shop/add_buy/

function lib:dialog/shop/test_buy.m with storage lib: Dialog.Shop

data remove storage lib: Dialog
