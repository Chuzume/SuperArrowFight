#> asset:object/system.map_select_button/tick/
#
# Objectのtick時の処理
#
# @within asset:object/_alias/1/tick

# 触れられるとモード変更
    # 開き
        execute if data entity @s[tag=system.map_select_button.Closed] interaction run function asset:object/system.map_select_button/tick/map_open/
    # 閉じ
        execute if data entity @s[tag=system.map_select_button.Open] interaction run function asset:object/system.map_select_button/tick/map_close/

# ゲームが始まるとマップ畳んで消える。
    execute if data storage world_manager: Game{Active:True} run function asset:object/system.map_select_button/tick/contract
