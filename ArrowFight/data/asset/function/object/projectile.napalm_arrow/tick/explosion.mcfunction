#> asset:object/projectile.napalm_arrow/tick/explosion
#
# 火をたくさん設置
#
# @within function asset:object/projectile.napalm_arrow/tick/

# サウンド
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 1.5 1
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1.5 1.5

# パーティクル
    particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.5 1.5 1.5 0 64 force @a[distance=..64]

# 1
    fill ~ ~-3 ~ ~ ~-3 ~ fire replace air
# 2
    fill ~-2 ~-2 ~-1 ~2 ~-2 ~1 fire replace air
    fill ~-1 ~-2 ~-2 ~1 ~-2 ~2 fire replace air
# 3
    fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 fire replace air
# 4
    fill ~-2 ~ ~-2 ~2 ~ ~2 fire replace air
    fill ~-3 ~ ~ ~-3 ~ ~ fire replace air
    fill ~3 ~ ~ ~3 ~ ~ fire replace air
    fill ~ ~ ~-3 ~ ~ ~-3 fire replace air
    fill ~ ~ ~3 ~ ~ ~3 fire replace air
# 5
    fill ~-2 ~1 ~-2 ~2 ~1 ~2 fire replace air
# 6
    fill ~-2 ~2 ~-1 ~2 ~2 ~1 fire replace air
    fill ~-1 ~2 ~-2 ~1 ~2 ~2 fire replace air
# 7
    fill ~ ~3 ~ ~ ~3 ~ fire replace air

# 消える
    kill @s
