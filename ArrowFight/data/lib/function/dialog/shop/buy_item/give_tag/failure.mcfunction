#> lib:dialog/shop/buy_item/give_tag/failure
#
# 購入できなかったときの処理。手持ちを実行開始時点のものに戻す
#
# @within function lib:dialog/shop/buy_item/give_tag/2.m

# バックアップを箱に移す
    data modify block 511 148 491 Items set from storage lib:temp Shop.BackupInventory

# 箱の中身を回収
    loot replace entity @s contents mine 511 148 491 debug_stick

# デバッグ用
    say 失敗…
