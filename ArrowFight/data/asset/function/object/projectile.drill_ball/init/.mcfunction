#> asset:object/projectile.drill_ball/init/
#
# Objectのinit時の処理
#
# @within asset:object/_alias/projectile.drill_ball/init

# 見た目召喚
    summon item_display ~ ~ ~ {Tags:["Init","AutoKillWhenDieVehicle","ProcessCommonTag"],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.0f]},item:{id:"minecraft:ender_eye",count:1b}}

# さっき召喚したものを、自分が乗ってる雪玉に乗せる
    execute on vehicle run ride @e[type=item_display,tag=Init,sort=nearest,limit=1] mount @s
    tag @e[type=item_display,tag=Init,sort=nearest,limit=1] remove Init

# 下の雪玉に場外で消す用のタグを付与
    execute on vehicle run tag @s add VanishOnExitArena

# Super
    function asset:object/super.init
