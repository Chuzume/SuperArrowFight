#> lib:dialog/shop/init
#
# 
#
# @within function lib:dialog/shop/test

# OMDを宣言
    function oh_my_dat:please

# ショップのIDを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ActiveDialog set from storage lib: Shop.ID

# コレ書いとかないとショップを開くたびにショップデータが膨れていく
    function lib:dialog/shop/reset_shop_data.m with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]

# リセット
    data remove storage lib: Shop.ID
