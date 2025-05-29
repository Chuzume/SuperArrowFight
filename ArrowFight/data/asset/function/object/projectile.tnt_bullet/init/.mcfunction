#> asset:object/projectile.tnt_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/_alias/projectile.tnt_bullet/init

# 下の雪玉に場外で消す用のタグを付与
    execute on vehicle run tag @s add VanishOnExitArena

# Super
    function asset:object/super.init
