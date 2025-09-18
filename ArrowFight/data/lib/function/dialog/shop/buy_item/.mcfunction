#> lib:dialog/shop/buy_item/
#
# 
#
# @within function lib:dialog/shop/test

# テスト
#   modify storage lib: Dialog.Shop.BuyItem set value {id: "minecraft:gold_ingot"}
#    data modify storage lib: Dialog.Shop.BuyItem set from entity @s SelectedItem
#    data modify storage lib: Dialog.Shop.BuyItem set from storage test: Dialog.Shop.BuyItemList[0]

# 手持ちをストレージに
    data modify storage lib:temp Shop.Inventory set from entity @s Inventory

# 失敗時に戻す用のインベントリのバックアップを作る
    data modify storage lib:temp Shop.BackupInventory set from storage lib:temp Shop.Inventory

# ダイアログのショップデータを、好き勝手編集が可能な仮データとして取得
    data modify storage lib:temp ShopData set from storage lib: Dialog.ShopData

# トリガーが何番だったか確認
# 今はテストなので固定
    execute store result storage lib:temp Shop.ID int 1 run scoreboard players set $Temp Temporary 1

# マクロで対象アイテムにタグ付与
    function lib:dialog/shop/buy_item/give_tag/1.m with storage lib:temp Shop

    #data modify block (シュルカーボックスの座標) Items[(ターゲットのデータ)].components."minecraft:custom_data".(カスタムタグ) set value (適当な値)

# マクロで対象アイテムにタグ付与
#    function lib:dialog/shop/buy_item/m with storage lib: Dialog.ShopData
