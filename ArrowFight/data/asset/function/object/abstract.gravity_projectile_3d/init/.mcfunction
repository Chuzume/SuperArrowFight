#> asset:object/abstract.gravity_projectile_3d/init/
#
# Objectのinit時の処理
#
# @within asset:object/_alias/abstract.gravity_projectile_3d/init

# 見た目召喚
    $summon item_display ~ ~ ~ {Rotation:$(Rotation),interpolation_duration:2,teleport_duration:1,Rotation:[0F,0F],Tags:["abstract.gravity_projectile_3d.Model","Init","AutoKillWhenDieVehicle","ProcessCommonTag"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:iron_axe",count:1}}

# さっき召喚したものを、自分が乗ってる雪玉に乗せる
    execute on vehicle run ride @e[type=item_display,tag=Init,sort=nearest,limit=1] mount @s
    tag @e[type=item_display,tag=Init,sort=nearest,limit=1] remove Init

# Super
    function asset:object/super.init
