#> player_manager:arrow/convert/as_arrow
#
# 
#
# @within function player_manager:arrow/convert/

# 自身のデータを取得してストレージへ
    data modify storage asset:temp ItemData.ObjectID set from entity @s item.components."minecraft:custom_data".object_id

# 取得したデータを用いて矢をオブジェクトにする
    function player_manager:arrow/convert/m with storage asset:temp ItemData

# リセット
    data remove storage asset:temp ItemData
