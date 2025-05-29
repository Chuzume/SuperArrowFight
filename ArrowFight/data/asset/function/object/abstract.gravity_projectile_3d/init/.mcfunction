#> asset:object/abstract.gravity_projectile_3d/init/
#
# Objectのinit時の処理
#
# @within asset:object/_alias/abstract.gravity_projectile_3d/init

# 見た目召喚、フィールドのデータも使う
    execute as 0-0-0-0-0 in minecraft:overworld run tp @s ~ ~ ~ ~ ~
    data modify storage asset:context this.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/abstract.gravity_projectile_3d/init/m with storage asset:context this
    data remove storage asset:temp this

# さっき召喚したものを、自分が乗ってる雪玉に乗せる
    execute on vehicle run ride @e[type=item_display,tag=Init,sort=nearest,limit=1] mount @s
    tag @e[type=item_display,tag=Init,sort=nearest,limit=1] remove Init

# Super
    function asset:object/super.init
