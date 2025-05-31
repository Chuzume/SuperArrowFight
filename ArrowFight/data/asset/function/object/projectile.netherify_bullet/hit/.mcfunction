#> asset:object/projectile.netherify_bullet/hit/
#
# 継承先などから実行される処理
#
# @within asset_manager:object/call_method/run_method.m

# スコア加算
    scoreboard players add @s General.Object.Tick 1

# パーティクル
    particle minecraft:reverse_portal ~ ~ ~ 0 0 0 2 1

# 着弾時
    execute if score @s General.Object.Tick matches 1 run function asset:object/projectile.netherify_bullet/hit/first

# 数Tickおきに警告音が鳴る
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:block.note_block.pling neutral @a ~ ~ ~ 1 2
    scoreboard players reset $Interval Temporary

# ネザー化発動
    execute if score @s General.Object.Tick matches 60 run function asset:object/projectile.netherify_bullet/hit/convert

# キル
    execute if score @s General.Object.Tick matches 60 run kill @s
