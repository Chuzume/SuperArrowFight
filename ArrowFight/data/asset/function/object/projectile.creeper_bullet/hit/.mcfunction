#> asset:object/projectile.creeper_bullet/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/_alias/projectile.creeper_bullet/hit

# クリーパーだ！
    summon creeper ~ ~ ~ {Motion:[0.0,0.5,0.0]}
    summon creeper ~ ~ ~ {Motion:[0.1,0.5,0.1]}
    summon creeper ~ ~ ~ {Motion:[0.1,0.5,-0.1]}
    summon creeper ~ ~ ~ {Motion:[0.1,0.5,-0.1]}
    summon creeper ~ ~ ~ {Motion:[-0.1,0.5,-0.1]}

# 演出
    playsound minecraft:entity.creeper.hurt neutral @a ~ ~ ~ 1.5 1
    playsound minecraft:block.trial_spawner.spawn_mob player @a ~ ~ ~ 1 1
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force @a[distance=..64]
    particle minecraft:electric_spark ~ ~1 ~ 0 0 0 1 100 force @a[distance=..64]

# Super
    function asset:object/super.method
