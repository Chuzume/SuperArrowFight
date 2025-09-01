#> asset:object/projectile.meteor_rain_bullet/hit/first
#
# 
#
# @within function asset:object/projectile.meteor_rain_bullet/hit/

# サウンド
    playsound minecraft:entity.blaze.ambient neutral @a ~ ~ ~ 3 1.2
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.ghast.shoot neutral @a ~ ~ ~ 3 0.5

# メッセージ
    tellraw @a[distance=..16] [{"text":"⚠ ","color":"red"},{"fallback":"Meteors are falling from the sky!","translate":"","color":"white"},{"text":" ⚠","color":"red"}]
