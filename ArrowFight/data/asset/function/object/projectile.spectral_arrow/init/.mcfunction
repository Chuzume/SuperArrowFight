#> asset:object/projectile.spectral_arrow/init/
#
# Objectのinit時の処理
#
# @within asset_manager:object/init/init.m

# サウンド
    playsound minecraft:block.amethyst_block.fall player @a ^ ^ ^1 1.5 1.5

# 場外で消す用のタグを付与
    tag @s add VanishOnExitArena
