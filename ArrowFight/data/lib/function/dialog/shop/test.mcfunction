#> lib:dialog/shop/test
#
# 
#
# @within function lib:dialog/shop/


# ショップのIDを設定
    data modify storage lib: ShopID set value "ArrowShop"

# ID設定後に実行すること
    function lib:dialog/shop/init

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/generic_arrow
        data modify storage lib: Shop.Sell set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.Sell.count set value 4
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:iron_block"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.iron_ingot"
        data modify storage lib: Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/generic_spectral_arrow
        data modify storage lib: Shop.Sell set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.Sell.count set value 2
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:iron_ingot"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.iron_ingot"
        data modify storage lib: Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:gold_ingot"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.gold_ingot"
        data modify storage lib: Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/napalm_bullet
        data modify storage lib: Shop.Sell set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.Sell.count set value 1
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:flint"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.flint"
        data modify storage lib: Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:iron_ingot"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.iron_ingot"
        data modify storage lib: Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 表示
    function lib:dialog/shop/
