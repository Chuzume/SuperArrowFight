#> asset:object/projectile.lightning_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/_alias/projectile.lightning_bullet/init

# サウンド
    playsound minecraft:item.trident.return player @a ^ ^ ^1 1 1.5
    playsound minecraft:entity.firework_rocket.twinkle player @a ^ ^ ^1 1 1.5

# 下の雪玉に場外で消す用のタグを付与
    execute on vehicle run tag @s add VanishOnExitArena

# Super
    function asset:object/super.init
