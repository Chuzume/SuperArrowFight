#> world_manager:event/game/reset
#
# 
#
# @within function world_manager:event/game/**

# ゲーム開始ボタンを置く
    execute positioned 500 127 501 run function api:object/summon.m {ID:system.game_start_button}

# マップ選択ボタンを置く
    execute positioned 500 127 505 run function api:object/summon.m {ID:system.map_select_button}

# マップを生成する
    data modify storage world_manager: GenerateMap.MapID set from storage world_manager: Game.LoadedMap
    data modify storage world_manager: GenerateMap.Active set value true

# 該当のエンティティをキル
    execute as @e[tag=VanishOnReset,distance=..128] at @s run function world_manager:event/game/vanish_object
