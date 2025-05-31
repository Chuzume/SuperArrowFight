#> asset:object/projectile.netherify_bullet/hit/first
#
# 
#
# @within function asset:object/projectile.netherify_bullet/hit/

# サウンド
    playsound minecraft:entity.blaze.death neutral @a ~ ~ ~ 3 0.8

# メッセージ
    tellraw @a[distance=..5] [{"text":"⚠ ","color":"red"},{"text":"この辺りはネザー化してしまう！","color":"white"},{"text":" ⚠","color":"red"}]
