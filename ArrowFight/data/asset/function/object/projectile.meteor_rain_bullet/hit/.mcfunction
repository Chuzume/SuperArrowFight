#> asset:object/projectile.meteor_rain_bullet/hit/
#
# 継承先などから実行される処理
#
# @within asset_manager:object/call_method/run_method.m

# スコア加算
    scoreboard players add @s General.Object.Tick 1

# パーティクル
    particle minecraft:large_smoke ~ ~5 ~ 1.5 3 1.5 0.05 1 force @a[distance=..64]
    particle minecraft:flame ~ ~5 ~ 1.5 3 1.5 0.05 1 force @a[distance=..64]

# 最初のTickに実行
    execute if score @s General.Object.Tick matches 1 run function asset:object/projectile.meteor_rain_bullet/hit/first

# 数Tickおきに警告音が鳴る
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 run playsound minecraft:block.note_block.pling neutral @a ~ ~ ~ 1 2
    scoreboard players reset $Interval Temporary

# メテオ召喚
    execute if score @s General.Object.Tick matches 20 run function asset:object/projectile.meteor_rain_bullet/hit/summon_meteor
    execute if score @s General.Object.Tick matches 30 run function asset:object/projectile.meteor_rain_bullet/hit/summon_meteor
    execute if score @s General.Object.Tick matches 40 run function asset:object/projectile.meteor_rain_bullet/hit/summon_meteor
    execute if score @s General.Object.Tick matches 50 run function asset:object/projectile.meteor_rain_bullet/hit/summon_meteor
    execute if score @s General.Object.Tick matches 60 run function asset:object/projectile.meteor_rain_bullet/hit/summon_meteor

# キル
    execute if score @s General.Object.Tick matches 60 run kill @s
