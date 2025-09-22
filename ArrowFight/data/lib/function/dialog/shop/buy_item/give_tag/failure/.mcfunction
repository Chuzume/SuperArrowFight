#> lib:dialog/shop/buy_item/give_tag/failure/
#
# 
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

## ダイアログ名を先に指定しておく
#    data modify storage lib: Shop.Name set value {"color":"red","fallback":"Projectile Shop","translate":"dialog.shop.arrow_shop.name","underlined":false}
#
## ダイアログ再オープン
#    function lib:dialog/shop/buy_item/give_tag/failure/re_open.m with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]
