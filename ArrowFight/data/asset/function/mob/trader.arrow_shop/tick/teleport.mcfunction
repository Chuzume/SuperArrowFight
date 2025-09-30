#> asset:mob/trader.arrow_shop/tick/teleport
#
# 
#
# @within function asset:mob/trader.arrow_shop/tick/

# しばらく光る
    effect give @s minecraft:glowing 2 0 true

# 演出
    particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force @a[distance=..32]
    playsound minecraft:entity.enderman.teleport neutral @a[distance=..32] ~ ~ ~ 1 1

# 所定の位置へ
    execute if entity @s[team=Team.Blue] run tp @s 480 130 557
    execute if entity @s[team=Team.Red] run tp @s 520 130 557

# 移動先で演出
    execute at @s run particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force @a[distance=..32]
    execute at @s run playsound minecraft:entity.enderman.teleport neutral @a[distance=..32] ~ ~ ~ 1 1
