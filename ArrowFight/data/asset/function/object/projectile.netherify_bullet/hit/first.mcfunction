#> asset:object/projectile.netherify_bullet/hit/first
#
# 
#
# @within function asset:object/projectile.netherify_bullet/hit/

# サウンド
    playsound minecraft:entity.blaze.death neutral @a ~ ~ ~ 3 0.8

# メッセージ
    tellraw @a[distance=..6] [{"text":"⚠ ","color":"red"},{"fallback":"This area is turning into the Nether!",translate:"entity.super_arrow_fight.netherify_bullet.alert","color":"white"},{"text":" ⚠","color":"red"}]
