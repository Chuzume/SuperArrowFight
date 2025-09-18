#> lib:dialog/shop/test
#
# 
#
# @within function lib:dialog/shop/

# OMDを宣言
    function oh_my_dat:please

# ショップのIDを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ActiveDialog set value "ArrowShop"

    tellraw @p {"nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ActiveDialog","storage":"oh_my_dat:"}

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/generic_arrow
        data modify storage lib: Dialog.Shop.Sell set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Dialog.Shop.Sell.count set value 4
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Dialog.Shop.BuyItem.Item set value {id: "minecraft:iron_block"}
        data modify storage lib: Dialog.Shop.BuyItem.Translate set value "item.minecraft.iron_ingot"
        data modify storage lib: Dialog.Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/generic_spectral_arrow
        data modify storage lib: Dialog.Shop.Sell set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Dialog.Shop.Sell.count set value 2
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Dialog.Shop.BuyItem.Item set value {id: "minecraft:iron_ingot"}
        data modify storage lib: Dialog.Shop.BuyItem.Translate set value "item.minecraft.iron_ingot"
        data modify storage lib: Dialog.Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 必要なアイテムを設定
        data modify storage lib: Dialog.Shop.BuyItem.Item set value {id: "minecraft:gold_ingot"}
        data modify storage lib: Dialog.Shop.BuyItem.Translate set value "item.minecraft.gold_ingot"
        data modify storage lib: Dialog.Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/napalm_bullet
        data modify storage lib: Dialog.Shop.Sell set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Dialog.Shop.Sell.count set value 1
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Dialog.Shop.BuyItem.Item set value {id: "minecraft:flint"}
        data modify storage lib: Dialog.Shop.BuyItem.Translate set value "item.minecraft.flint"
        data modify storage lib: Dialog.Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 必要なアイテムを設定
        data modify storage lib: Dialog.Shop.BuyItem.Item set value {id: "minecraft:iron_ingot"}
        data modify storage lib: Dialog.Shop.BuyItem.Translate set value "item.minecraft.iron_ingot"
        data modify storage lib: Dialog.Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 表示
    function lib:dialog/shop/test.m with storage lib: Dialog.Shop

# リセット
    data remove storage lib: Dialog.Shop
    scoreboard players reset $TriggerID Temporary

#dialog show @s {"type":"minecraft:notice","title":{"text":"HogeHoge"},"body":[{"type":"minecraft:item","item":{"id":"gold_ingot","count":4},"description":{"text":"[Buy]","hover_event":{"action":"show_text","value":{"text":"必要材料:\n金インゴット×99\n終インゴット×99"}}},"height":16,"width":16},{"type":"minecraft:plain_message","contents":{"text":"","underlined":true}}]}
#data modify storage lib: dialog.shop.body set value {"type":"minecraft:notice","title":{"text":"HogeHoge"},"body":[{"type":"minecraft:item","item":{"id":"gold_ingot","count":4},"description":{"text":"[Buy]","hover_event":{"action":"show_text","value":{"text":"必要材料:\n金インゴット×99\n終インゴット×99"}}},"height":16,"width":16},{"type":"minecraft:plain_message","contents":{"text":"","underlined":true}}]}
#data modify storage lib: dialog.shop.body set value [{"type":"minecraft:plain_message","contents":{"text":"1"}}]
#data modify storage lib: dialog.shop.body append value {"type":"minecraft:plain_message","contents":{"text":"2"}}
#function lib:dialog/shop/test.m with storage lib: dialog.shop
