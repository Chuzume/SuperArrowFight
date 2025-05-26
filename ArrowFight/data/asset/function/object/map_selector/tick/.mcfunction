#> asset:object/map_selector/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/1/tick

# 触れられるとモード変更
    # 開き
        execute if data entity @s[tag=map_selector.Closed] interaction run function asset:object/map_selector/tick/map_open/
    # 閉じ
        execute if data entity @s[tag=map_selector.Open] interaction run function asset:object/map_selector/tick/map_close/
