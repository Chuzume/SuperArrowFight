#> world_manager:event/game/reset
#
# 
#
# @within function world_manager:event/game/**

# 敵チームのネームタグが見えるようになる
    team modify Team.Blue nametagVisibility always
    team modify Team.Red nametagVisibility always

# ゲーム開始ボタンを置く
    execute positioned 500 127 501 run function api:object/summon.m {ID:system.game_start_button}

# マップ選択ボタンを置く
    execute positioned 500 127 509 run function api:object/summon.m {ID:system.map_select_button}

# チーム参加ホログラム設置
    summon text_display 492 127.5 501 {view_range:0.5f,billboard:"vertical",shadow:1b,Tags:["LobbyHologram","TeamJoinHologram"],text:{"fallback":" Join Blue Team ","translate":"lobby.hologram.join_blue"},background:16711680}
    summon text_display 508 127.5 501 {view_range:0.5f,billboard:"vertical",shadow:1b,Tags:["LobbyHologram","TeamJoinHologram"],text:{"fallback":" Join Red Team ","translate":"lobby.hologram.join_red"},background:16711680}

# マップを生成する
    data modify storage world_manager: GenerateMap.MapID set from storage world_manager: Game.LoadedMap
    data modify storage world_manager: GenerateMap.Active set value true

# 該当のエンティティをキル
    execute as @e[tag=VanishOnReset,distance=..128] at @s run function world_manager:event/game/vanish_object
