#> asset:dialog/projectile_shop
#
# 
#
# @within function asset:item/other.dialog_shop_open/tick

# ショップのID(String)
    data modify storage lib: Shop.ID set value "projectile_shop"

# ショップ名(TextComponent)
# ただし、すでにネームが設定されていない場合。購入失敗時にここの表示を使うため
    execute unless data storage lib: Shop.Name run data modify storage lib: Shop.Name set value {"color":"white","fallback":"Projectile Shop","translate":"dialog.shop.arrow_shop.name","underlined":false}

# 購入ボタンの表示(TextComponent) (List)
    data modify storage lib: Shop.BuyButton set value [{"color":"white","text":"[ ","underlined":true},{"translate":"dialog.shop.arrow_shop.buy","fallback":"Buy"},{"color":"white","text":" ]","underlined":true}]

# 閉じるボタンの表示(TextComponent)
    data modify storage lib: Shop.CloseButton set value [{"color":"white","translate":"mco.selectServer.close"}]

# ID設定後に実行すること
    function lib:dialog/shop/init

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/generic_arrow
        data modify storage lib: Shop.SellItem set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.SellItem.count set value 4
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:iron_ingot"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.iron_ingot"
        data modify storage lib: Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/generic_spectral_arrow
        data modify storage lib: Shop.SellItem set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.SellItem.count set value 2
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
        data modify storage lib: Shop.SellItem set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.SellItem.count set value 1
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

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/tnt_bullet
        data modify storage lib: Shop.SellItem set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.SellItem.count set value 1
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:redstone"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.redstone"
        data modify storage lib: Shop.BuyItem.Count set value 8
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/meteor_rain_bullet
        data modify storage lib: Shop.SellItem set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.SellItem.count set value 1
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:redstone"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.redstone"
        data modify storage lib: Shop.BuyItem.Count set value 6
        function lib:dialog/shop/add_buy/
        # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:coal_block"}
        data modify storage lib: Shop.BuyItem.Translate set value "block.minecraft.coal_block"
        data modify storage lib: Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/lightning_bullet
        data modify storage lib: Shop.SellItem set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.SellItem.count set value 1
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:gold_block"}
        data modify storage lib: Shop.BuyItem.Translate set value "block.minecraft.gold_block"
        data modify storage lib: Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/creeper_bullet
        data modify storage lib: Shop.SellItem set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.SellItem.count set value 1
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:iron_block"}
        data modify storage lib: Shop.BuyItem.Translate set value "block.minecraft.iron_block"
        data modify storage lib: Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
        # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:emerald"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.emerald"
        data modify storage lib: Shop.BuyItem.Count set value 5
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/zombie_bullet
        data modify storage lib: Shop.SellItem set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.SellItem.count set value 1
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:iron_block"}
        data modify storage lib: Shop.BuyItem.Translate set value "block.minecraft.iron_block"
        data modify storage lib: Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
        # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:emerald"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.emerald"
        data modify storage lib: Shop.BuyItem.Count set value 8
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/poison_mist_bullet
        data modify storage lib: Shop.SellItem set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.SellItem.count set value 1
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:sand"}
        data modify storage lib: Shop.BuyItem.Translate set value "block.minecraft.sand"
        data modify storage lib: Shop.BuyItem.Count set value 3
        function lib:dialog/shop/add_buy/
        # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:emerald"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.emerald"
        data modify storage lib: Shop.BuyItem.Count set value 3
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/mining_bullet
        data modify storage lib: Shop.SellItem set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.SellItem.count set value 1
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:cobblestone"}
        data modify storage lib: Shop.BuyItem.Translate set value "block.minecraft.cobblestone"
        data modify storage lib: Shop.BuyItem.Count set value 12
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/

# 商品
    # 商品を指定: ルートテーブルからやる
        loot spawn ~ ~ ~ loot asset:item/netherify_bullet
        data modify storage lib: Shop.SellItem set from entity @n[type=item,distance=..0.1] Item
        data modify storage lib: Shop.SellItem.count set value 1
        kill @n[type=item,distance=..0.1]
    # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:cobblestone"}
        data modify storage lib: Shop.BuyItem.Translate set value "block.minecraft.cobblestone"
        data modify storage lib: Shop.BuyItem.Count set value 10
        function lib:dialog/shop/add_buy/
        # 必要なアイテムを設定
        data modify storage lib: Shop.BuyItem.Item set value {id: "minecraft:lava_bucket"}
        data modify storage lib: Shop.BuyItem.Translate set value "item.minecraft.lava_bucket"
        data modify storage lib: Shop.BuyItem.Count set value 1
        function lib:dialog/shop/add_buy/
    # 在庫を追加
        function lib:dialog/shop/add_stock/
    
# 表示
    function lib:dialog/shop/
