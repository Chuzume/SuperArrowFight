#> asset:object/projectile.meteor/init/
#
# Objectのinit時の処理
#
# @within asset_manager:object/init/init.m

# サウンド
    playsound minecraft:block.trial_spawner.spawn_item player @a ^ ^ ^1 1 1.5
    playsound minecraft:entity.creeper.hurt player @a ^ ^ ^1 1 1

# 下の雪玉に場外で消す用のタグを付与
    execute on vehicle run tag @s add VanishOnExitArena

# Super
    function asset:object/super.init
