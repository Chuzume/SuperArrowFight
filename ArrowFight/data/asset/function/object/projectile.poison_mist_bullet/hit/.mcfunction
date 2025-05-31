#> asset:object/projectile.poison_mist_bullet/hit/
#
# 継承先などから実行される処理
#
# @within asset_manager:object/call_method/run_method.m

# スコア加算
    scoreboard players add @s General.Object.Tick 1

# サウンド
    execute if score @s General.Object.Tick matches 1 run playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1.5 1

# パーティクル
    particle entity_effect{color:[0.3,0.57,0.19,1.0]} ~ ~ ~ 2.5 2.5 2.5 1 20 force @a[distance=..64]
    particle dust{color:[0.3,0.57,0.19],scale:2} ~ ~ ~ 2.5 2.5 2.5 1 5 force @a[distance=..64]

# 範囲内のプレイヤーに毒を付与する
    effect give @a[distance=..5] poison 1 1

# キル
    execute if score @s General.Object.Tick matches 200 run kill @s
