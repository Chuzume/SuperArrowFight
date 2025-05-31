#> asset:object/projectile.meteor_rain_bullet/hit/summon_meteor
#
# 
#
# @within function asset:object/projectile.meteor_rain_bullet/hit/

#> Private
# @private
    #declare tag SpreadMarker

# サウンド
    playsound minecraft:entity.ghast.shoot neutral @a ~ ~ ~ 1.5 1.5

# マーカーを召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# メテオのデータ指定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 拡散
    data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute as @n[type=marker,tag=SpreadMarker] run function lib:spread_entity/

# マーカーの位置にオブジェクト召喚
    execute at @n[type=marker,tag=SpreadMarker] positioned ~ ~50 ~ rotated ~ 90 run function api:object/summon.m {ID:projectile.meteor}

# マーカーキル
    kill @n[type=marker,tag=SpreadMarker]
