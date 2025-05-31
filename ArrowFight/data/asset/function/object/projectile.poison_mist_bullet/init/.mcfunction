#> asset:object/projectile.poison_mist_bullet/init/
#
# Objectのinit時の処理
#
# @within asset_manager:object/init/init.m

# サウンド
    playsound minecraft:item.bottle.fill_dragonbreath neutral @a ^ ^ ^1 1 1.5
    playsound minecraft:item.bottle.empty neutral @a ^ ^ ^1 1 0.5

# 下の雪玉に場外で消す用のタグを付与
    execute on vehicle run tag @s add VanishOnExitArena

# Super
    function asset:object/super.init
