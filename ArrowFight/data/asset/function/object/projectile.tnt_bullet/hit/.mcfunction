#> asset:object/projectile.tnt_bullet/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/_alias/projectile.tnt_bullet/hit

# サウンド  
    playsound minecraft:item.flintandsteel.use neutral @a ~ ~ ~ 1 1
    playsound minecraft:block.grass.place neutral @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.tnt.primed neutral @a ~ ~ ~ 1.5 1

# パーティクル
    particle minecraft:dust_plume ~ ~ ~ 0.3 0.3 0.3 0 50

# TNT召喚
    summon tnt ~ ~-0.3 ~ {fuse:50s}

# super
    function asset:object/super.method
