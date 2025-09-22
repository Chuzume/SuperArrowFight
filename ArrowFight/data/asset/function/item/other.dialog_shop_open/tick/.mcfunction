#> asset:item/other.dialog_shop_open/tick/
#
# 
#
# @within function core:tick/player/

# スコアボード加算
    scoreboard players add @s[advancements={core:handler/using_item=true}] other.dialog_shop.tick 1

# パーティクル
    execute if score @s other.dialog_shop.tick matches 1..65 positioned ~ ~0.1 ~ rotated ~ 0 run function asset:item/other.dialog_shop_open/tick/shape
    execute if score @s other.dialog_shop.tick matches 65.. positioned ~ ~0.1 ~ rotated ~ 0 run function asset:item/other.dialog_shop_open/tick/shape_2

# サウンド
    execute if score @s other.dialog_shop.tick matches 1 run playsound minecraft:block.note_block.iron_xylophone player @a ~ ~ ~ 1 1
    execute if score @s other.dialog_shop.tick matches 20 run playsound minecraft:block.note_block.iron_xylophone player @a ~ ~ ~ 1 1.5
    execute if score @s other.dialog_shop.tick matches 40 run playsound minecraft:block.note_block.iron_xylophone player @a ~ ~ ~ 1 2
    execute if score @s other.dialog_shop.tick matches 60 run playsound minecraft:block.ender_chest.open player @a ~ ~ ~ 1 0.5
    execute if score @s other.dialog_shop.tick matches 61 run playsound minecraft:block.ender_chest.open player @a ~ ~ ~ 1 0.6
    execute if score @s other.dialog_shop.tick matches 62 run playsound minecraft:block.ender_chest.open player @a ~ ~ ~ 1 0.7
    execute if score @s other.dialog_shop.tick matches 63 run playsound minecraft:block.ender_chest.open player @a ~ ~ ~ 1 0.8
    execute if score @s other.dialog_shop.tick matches 64 run playsound minecraft:block.ender_chest.open player @a ~ ~ ~ 1 0.9
    execute if score @s other.dialog_shop.tick matches 65 run playsound minecraft:block.ender_chest.open player @a ~ ~ ~ 1 1

# 展開
    execute if score @s other.dialog_shop.tick matches 65 run function asset:dialog/projectile_shop

# リセット
    scoreboard players reset @s[advancements={core:handler/using_item=false}] other.dialog_shop.tick
