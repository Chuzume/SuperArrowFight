#> asset:object/projectile.netherify_bullet/hit/convert
#
# 
#
# @within function asset:object/projectile.netherify_bullet/hit/

# 空きスペースにブレイズを召喚
#    execute if block ~3 ~2 ~3 air run summon blaze ~3 ~2 ~3 {Tags:["Init"]}
#    execute if block ~-3 ~2 ~-3 air run summon blaze ~-3 ~2 ~-3 {Tags:["Init"]}

# パーティクル
    particle minecraft:crimson_spore ~ ~ ~ 2 2 2 0 100 force @a[distance=..64]
    particle minecraft:ash ~ ~ ~ 2 2 2 0 100 force @a[distance=..64]
    particle minecraft:explosion ~ ~ ~ 2 2 2 1 10 force @a[distance=..64]

# サウンド
    playsound minecraft:entity.zombie.infect neutral @a ~ ~ ~ 3 0.8
    playsound minecraft:entity.zombie.infect neutral @a ~ ~ ~ 3 1
    playsound minecraft:entity.zombie_villager.converted neutral @a ~ ~ ~ 1 0.8

# 周囲のブロックを変換する
    fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace #asset:object/projectile.netherify_bullet/to_air
    fill ~4 ~4 ~4 ~-4 ~-4 ~-4 structure_void replace water
    fill ~4 ~4 ~4 ~-4 ~-4 ~-4 lava replace structure_void
    fill ~4 ~4 ~4 ~-4 ~-4 ~-4 crimson_nylium replace #asset:object/projectile.netherify_bullet/to_nylium
    fill ~4 ~4 ~4 ~-4 ~-4 ~-4 netherrack replace #asset:object/projectile.netherify_bullet/to_netherrack
    fill ~4 ~4 ~4 ~-4 ~-4 ~-4 polished_basalt replace #minecraft:logs
    fill ~4 ~4 ~4 ~-4 ~-4 ~-4 nether_quartz_ore replace #asset:object/projectile.netherify_bullet/to_quartz
    fill ~4 ~4 ~4 ~-4 ~-4 ~-4 soul_soil replace #asset:object/projectile.netherify_bullet/to_soul_soil
    fill ~4 ~4 ~4 ~-4 ~-4 ~-4 crimson_roots replace #asset:object/projectile.netherify_bullet/to_roots
    fill ~4 ~4 ~4 ~-4 ~-4 ~-4 basalt replace #asset:object/projectile.netherify_bullet/to_basalt

    fill ~5 ~4 ~-2 ~5 ~-4 ~2 air replace #asset:object/projectile.netherify_bullet/to_air
    fill ~5 ~4 ~-2 ~5 ~-4 ~2 structure_void replace water
    fill ~5 ~4 ~-2 ~5 ~-4 ~2 lava replace structure_void
    fill ~5 ~4 ~-2 ~5 ~-4 ~2 crimson_nylium replace #asset:object/projectile.netherify_bullet/to_nylium
    fill ~5 ~4 ~-2 ~5 ~-4 ~2 netherrack replace #asset:object/projectile.netherify_bullet/to_netherrack
    fill ~5 ~4 ~-2 ~5 ~-4 ~2 polished_basalt replace #minecraft:logs
    fill ~5 ~4 ~-2 ~5 ~-4 ~2 nether_quartz_ore replace #asset:object/projectile.netherify_bullet/to_quartz
    fill ~5 ~4 ~-2 ~5 ~-4 ~2 soul_soil replace #asset:object/projectile.netherify_bullet/to_soul_soil
    fill ~5 ~4 ~-2 ~5 ~-4 ~2 crimson_roots replace #asset:object/projectile.netherify_bullet/to_roots
    fill ~5 ~4 ~-2 ~5 ~-4 ~2 basalt replace #asset:object/projectile.netherify_bullet/to_basalt

    fill ~2 ~4 ~5 ~-2 ~-4 ~5 air replace #asset:object/projectile.netherify_bullet/to_air
    fill ~2 ~4 ~5 ~-2 ~-4 ~5 structure_void replace water
    fill ~2 ~4 ~5 ~-2 ~-4 ~5 lava replace structure_void
    fill ~2 ~4 ~5 ~-2 ~-4 ~5 crimson_nylium replace #asset:object/projectile.netherify_bullet/to_nylium
    fill ~2 ~4 ~5 ~-2 ~-4 ~5 netherrack replace #asset:object/projectile.netherify_bullet/to_netherrack
    fill ~2 ~4 ~5 ~-2 ~-4 ~5 polished_basalt replace #minecraft:logs
    fill ~2 ~4 ~5 ~-2 ~-4 ~5 nether_quartz_ore replace #asset:object/projectile.netherify_bullet/to_quartz
    fill ~2 ~4 ~5 ~-2 ~-4 ~5 soul_soil replace #asset:object/projectile.netherify_bullet/to_soul_soil
    fill ~2 ~4 ~5 ~-2 ~-4 ~5 crimson_roots replace #asset:object/projectile.netherify_bullet/to_roots
    fill ~2 ~4 ~5 ~-2 ~-4 ~5 basalt replace #asset:object/projectile.netherify_bullet/to_basalt

    fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 air replace #asset:object/projectile.netherify_bullet/to_air
    fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 structure_void replace water
    fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 lava replace structure_void
    fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 crimson_nylium replace #asset:object/projectile.netherify_bullet/to_nylium
    fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 netherrack replace #asset:object/projectile.netherify_bullet/to_netherrack
    fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 polished_basalt replace #minecraft:logs
    fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 nether_quartz_ore replace #asset:object/projectile.netherify_bullet/to_quartz
    fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 soul_soil replace #asset:object/projectile.netherify_bullet/to_soul_soil
    fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 crimson_roots replace #asset:object/projectile.netherify_bullet/to_roots
    fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 basalt replace #asset:object/projectile.netherify_bullet/to_basalt

    fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 air replace #asset:object/projectile.netherify_bullet/to_air
    fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 structure_void replace water
    fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 lava replace structure_void
    fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 crimson_nylium replace #asset:object/projectile.netherify_bullet/to_nylium
    fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 netherrack replace #asset:object/projectile.netherify_bullet/to_netherrack
    fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 polished_basalt replace #minecraft:logs
    fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 nether_quartz_ore replace #asset:object/projectile.netherify_bullet/to_quartz
    fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 soul_soil replace #asset:object/projectile.netherify_bullet/to_soul_soil
    fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 crimson_roots replace #asset:object/projectile.netherify_bullet/to_roots
    fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 basalt replace #asset:object/projectile.netherify_bullet/to_basalt
