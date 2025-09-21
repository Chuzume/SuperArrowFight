#> lib:dialog/shop/buy_item/give_tag/failure
#
# 購入できなかったときの処理。手持ちを実行開始時点のものに戻す
#
# @within function lib:dialog/shop/buy_item/give_tag/2.m

# 浄化
    function lib:dialog/shop/buy_item/give_tag/cleanse_tag

# サウンド
    playsound minecraft:block.note_block.bass ui @s ~ ~ ~ 2 1

# バックアップを箱に移す
    data modify block 0 0 0 Items set from storage lib:temp Shop.BackupInventory
    data modify block 1 0 0 Items set from storage lib:temp Shop.BackupInventory2

# 箱の中身を回収
    loot replace entity @s contents mine 0 0 0 debug_stick
    function lib:dialog/shop/buy_item/extra/to_inventory
