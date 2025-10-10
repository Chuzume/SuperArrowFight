#> core:load_init/deferred_execution
#
# 遅延して実行（即座にロードするとおかしなことが起きるので）
#
# @within function core:load_init/

# ロビーのオブジェクトを設置
    execute positioned 500 127 501 rotated 0 0 run function api:object/summon.m {ID:system.game_start_button}
    execute positioned 500 127 509 rotated 0 0 run function api:object/summon.m {ID:system.map_select_button}
    execute positioned 503 126 497 rotated 0 0 run function api:object/summon.m {ID:system.book_how_to_play}
    execute positioned 497 126 497 rotated 0 0 run function api:object/summon.m {ID:system.random_team}
    execute positioned 477 128 479 rotated 0 0 run function api:object/summon.m {ID:system.book_credit}
    summon text_display 492 127.5 501 {view_range:0.25f,billboard:"vertical",shadow:1b,Tags:["LobbyHologram","TeamJoinHologram"],text:{"fallback":" Join §b§n Blue Team ","translate":"lobby.hologram.join_blue"},background:16711680}
    summon text_display 508 127.5 501 {view_range:0.25f,billboard:"vertical",shadow:1b,Tags:["LobbyHologram","TeamJoinHologram"],text:{"fallback":" Join §c§n Red Team ","translate":"lobby.hologram.join_red"},background:16711680}
    summon text_display 500 127.5 488 {view_range:0.25f,billboard:"vertical",shadow:1b,Tags:["LobbyHologram"],text:{"fallback":" Join §n Spectator §r ","translate":"lobby.hologram.join_spectator"},background:16711680}
