#> asset:object/abstract.gravity_projectile_3d/init/
#
# Objectのinit時の処理
#
# @within asset:object/_alias/abstract.gravity_projectile_3d/init

# さっき召喚したものを、自分が乗ってる雪玉に乗せる
    execute on vehicle run ride @e[type=item_display,tag=Init,sort=nearest,limit=1] mount @s
    tag @e[type=item_display,tag=Init,sort=nearest,limit=1] remove Init

# Super
    function asset:object/super.init
