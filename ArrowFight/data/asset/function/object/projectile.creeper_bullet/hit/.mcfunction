#> asset:object/projectile.creeper_bullet/hit/
#
# 継承先などから実行される処理
#
# @within asset_manager:object/call_method/run_method.m

# クリーパーだ！
    execute positioned ~ ~ ~ run function asset:object/projectile.creeper_bullet/hit/summon
    execute positioned ~0.1 ~ ~ run function asset:object/projectile.creeper_bullet/hit/summon
    execute positioned ~-0.1 ~ ~ run function asset:object/projectile.creeper_bullet/hit/summon
    execute positioned ~ ~ ~0.1 run function asset:object/projectile.creeper_bullet/hit/summon
    execute positioned ~ ~ ~-0.1 run function asset:object/projectile.creeper_bullet/hit/summon



# 演出
    playsound minecraft:entity.creeper.hurt neutral @a ~ ~ ~ 1.5 1
    playsound minecraft:block.trial_spawner.spawn_mob player @a ~ ~ ~ 1 1
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force @a[distance=..64]
    particle minecraft:electric_spark ~ ~1 ~ 0 0 0 1 100 force @a[distance=..64]

# Super
    function asset:object/super.method
