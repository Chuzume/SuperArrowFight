#> asset:object/projectile.lightning_bullet/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/_alias/projectile.lightning_bullet/hit


# スコア加算
    scoreboard players add @s General.Object.Tick 1

# サウンド
    execute if score @s General.Object.Tick matches 1 run playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1.5 0.5

# 雷
    execute if score @s General.Object.Tick matches 5 run summon lightning_bolt ~ ~ ~
    execute if score @s General.Object.Tick matches 7 run summon lightning_bolt ~1 ~ ~
    execute if score @s General.Object.Tick matches 9 run summon lightning_bolt ~ ~ ~1

# キル
    execute if score @s General.Object.Tick matches 9 run kill @s
