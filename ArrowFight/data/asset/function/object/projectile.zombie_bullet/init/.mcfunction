#> asset:object/projectile.zombie_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/_alias/projectile.zombie_bullet/init

# サウンド
    playsound minecraft:block.trial_spawner.spawn_item player @a ^ ^ ^1 1 1.5
    playsound minecraft:entity.zombie.ambient player @a ^ ^ ^1 1 1

# 下の雪玉に場外で消す用のタグを付与
    execute on vehicle run tag @s add VanishOnExitArena

# Super
    function asset:object/super.init
