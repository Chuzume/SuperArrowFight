#> core:load_init
#
# 
#
# @within function core:load

# スコアボード作成
    scoreboard objectives add MobUUID dummy {"text":"汎用固有MobID"}
    scoreboard objectives add ObjectID dummy {"text":"ObjectAssetのID"}
    scoreboard objectives add MobID dummy {"text":"MobAssetのID"}

    #> 1tickで消す一時変数の保存用スコアボード
    # @public
        scoreboard objectives add Temporary dummy

    #> 常に値が設定される変数用スコアボード
    # @public
        scoreboard objectives add Global dummy

    #> 定数類用スコアボード **変更厳禁**
    # @public
        scoreboard objectives add Const dummy
        function core:define_const

    #> AssetManager: Object -Public
    # @within function
    #   asset:object/**
        scoreboard objectives add General.Object.Tick dummy {"text":"ObjectAsset内で使用できるTick用スコア"}

    #> AssetManager: Mob -Public
    # @within function
    #   asset:mob/**
        scoreboard objectives add General.Mob.Tick dummy {"text":"MobAsset内で使用できるTick用スコア"}

    #> 試合用スコア
    # @within function
    #   world_manager/event/
        scoreboard objectives add Game.Tick dummy {"text":"試合のTick用スコア"}
        scoreboard objectives add DeathMatch.Tick dummy {"text":"試合のTick用スコア"}

    #> MobManager用スコアボード - 攻撃元
    # @within function
    #   core:early_handler/damage
    #   asset_manager:artifact/handler/on_damage_without_source
    #   mob_manager:entity_finder/entity_hurt_player/fetch_entity
        scoreboard objectives add TakenDamage custom:damage_taken
        scoreboard objectives add AbsorbedDamage custom:damage_absorbed
        
    #> UserID
    # @public
        scoreboard objectives add UserID dummy {"text":"汎用固有ユーザーID"}
        scoreboard objectives add MobUUID dummy {"text":"汎用固有MobID"}
        
    #> Library用スコアボード
    # @public
        scoreboard objectives add Lib dummy {"text":"ライブラリの引数/返り値用"}
        scoreboard objectives add ForwardTargetMobUUID dummy {"text":"ダメージを転送する対象"}

    #> イベントハンドラ用スコアボード
    # @within function
    #   asset_manager:artifact/triggers/**
    #   core:load_once
    #   core:handler/*
    #   core:tick/**
        scoreboard objectives add FirstJoinEvent custom:play_time {"text":"イベント: 初回Join"}
        scoreboard objectives add RejoinEvent custom:leave_game {"text":"イベント: ゲームから退出"}
        scoreboard objectives add DeathEvent deathCount {"text":"イベント: 死亡"}
        scoreboard objectives add RespawnEvent custom:time_since_death {"text":"イベント: リスポーン"}
        scoreboard objectives add Sneak custom:sneak_time {"text":"イベント: スニーク"}
        #scoreboard objectives add Elytra custom:aviate_one_cm {"text":"イベント: エリトラ"}
        #scoreboard objectives add DropEvent custom:drop {"text":"イベント: アイテムドロップ"}
        #scoreboard objectives add ClickCarrotEvent used:carrot_on_a_stick {"text":"イベント: クリック 人参棒"}
        scoreboard objectives add UseBowEvent used:bow {"text":"イベント: 弓の使用"}

    #> その他スコアボード
        scoreboard objectives add StopRegeneration dummy {"text":"ヘルス再生停止"}

# ゲームルール定義
    gamerule keepInventory false
    gamerule spectatorsGenerateChunks false
    gamerule commandModificationBlockLimit 2147483647
    gamerule doDaylightCycle false
    gamerule doImmediateRespawn true
    gamerule locatorBar false
    gamerule spawnRadius 0
    gamerule naturalRegeneration false
    gamerule reducedDebugInfo true

# チーム作成と設定
    # 赤チーム
        team add Team.Red
        team modify Team.Red displayName {"color":"red","text":"赤チーム","underlined":true}
        team modify Team.Red prefix [{"color":"red","text":"[Red] "}]
        team modify Team.Red seeFriendlyInvisibles true
        team modify Team.Red nametagVisibility hideForOtherTeams
        team modify Team.Red friendlyFire false
        team modify Team.Red collisionRule pushOtherTeams
        team modify Team.Red color red
    # 青チーム
        team add Team.Blue
        team modify Team.Blue displayName {"color":"aqua","text":"青チーム","underlined":true}
        team modify Team.Blue prefix [{"color":"aqua","text":"[Blue] "}]
        team modify Team.Blue seeFriendlyInvisibles true
        team modify Team.Blue nametagVisibility hideForOtherTeams
        team modify Team.Blue friendlyFire false
        team modify Team.Blue collisionRule pushOtherTeams
        team modify Team.Blue color aqua
    # 観戦チーム
        team add Team.Spectator
        team modify Team.Spectator displayName {"color":"gray","text":"観戦","underlined":true}
        team modify Team.Spectator prefix [{"color":"gray","text":"[Spectator] "}]
        team modify Team.Spectator seeFriendlyInvisibles false
        team modify Team.Spectator friendlyFire false
        team modify Team.Spectator collisionRule pushOtherTeams
        team modify Team.Spectator color gray

# ロビーのオブジェクトを設置
    execute positioned 500 127 501 rotated 0 0 run function api:object/summon.m {ID:system.game_start_button}
    execute positioned 500 127 509 rotated 0 0 run function api:object/summon.m {ID:system.map_select_button}
    execute positioned 503 126 497 rotated 0 0 run function api:object/summon.m {ID:system.book_how_to_play}
    summon text_display 492 127.5 501 {view_range:0.25f,billboard:"vertical",shadow:1b,Tags:["LobbyHologram","TeamJoinHologram"],text:{"fallback":" Join §b§n Blue Team ","translate":"lobby.hologram.join_blue"},background:16711680}
    summon text_display 508 127.5 501 {view_range:0.25f,billboard:"vertical",shadow:1b,Tags:["LobbyHologram","TeamJoinHologram"],text:{"fallback":" Join §c§n Red Team ","translate":"lobby.hologram.join_red"},background:16711680}
    summon text_display 500 127.5 488 {view_range:0.25f,billboard:"vertical",shadow:1b,Tags:["LobbyHologram"],text:{"fallback":" Join §7§n Spectator §r ","translate":"lobby.hologram.join_spectator"},background:16711680}

# フォースロード
    forceload add 0 0 0 0

# 原点を召喚
    summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}

# 初期ロードが終わったことをストレージに書いておく
    data modify storage world_manager: Game.Init set value true
