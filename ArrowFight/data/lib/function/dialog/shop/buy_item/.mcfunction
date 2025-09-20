#> lib:dialog/shop/buy_item/
#
# 購入処理
#
# @within function world_manager:event/dialog/tick

# トリガーを有効化
    scoreboard players enable @s Trigger.DialogShop

# OMDを宣言
    function oh_my_dat:please

# ショップのIDを設定
    data modify storage lib:temp Shop.ActiveDialog set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ActiveDialog

# 手持ちをストレージに
    data modify storage lib:temp Shop.Inventory set from entity @s Inventory

# 失敗時に戻す用のインベントリのバックアップを作る
    data modify storage lib:temp Shop.BackupInventory set from storage lib:temp Shop.Inventory

# はみ出し部分はちょっと面倒
    function lib:dialog/shop/buy_item/extra/to_box
    data modify storage lib:temp Shop.Inventory2 set from block 1 0 0 Items
    data modify storage lib:temp Shop.BackupInventory2 set from block 1 0 0 Items

# ダイアログのショップデータを、好き勝手編集が可能な仮データとして取得
    function lib:dialog/shop/buy_item/m with storage lib:temp Shop

# トリガーが何番だったか確認、ただしリストの最初は0なので、1マイナスして取得
    execute store result storage lib:temp Shop.ID int 1 run scoreboard players operation @s Trigger.DialogShop -= $1 Const

# 今はテストなので固定
    #execute store result storage lib:temp Shop.ID int 1 run scoreboard players set $Temp Temporary 1

# マクロで対象アイテムにタグ付与
    function lib:dialog/shop/buy_item/give_tag/1.m with storage lib:temp Shop

# 全てが終わったらリセットするのさ
    data remove storage lib:temp Shop
    data remove storage lib:temp ShopData
    scoreboard players set @s Trigger.DialogShop 0
