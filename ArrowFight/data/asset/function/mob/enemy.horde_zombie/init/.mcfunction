#> asset:mob/enemy.horde_zombie/init/
#
# Mobのinit時の処理
#
# @within asset_manager:mob/triggers/init/init.m

# チームによって帽子を変える
    execute if data storage asset:context this{Team:Blue} run item replace entity @s armor.head with leather_helmet[dyed_color=3949738]
    execute if data storage asset:context this{Team:Red} run item replace entity @s armor.head with leather_helmet[dyed_color=11546150]

# フィールドのチームによって実際のチームを変える
    execute if data storage asset:context this{Team:Blue} run team join Team.Blue
    execute if data storage asset:context this{Team:Red} run team join Team.Red

# 武装
    item replace entity @s weapon.mainhand with wooden_sword

# そこら辺のやつの方を向く
    rotate @s facing entity @p[distance=..16] feet

# 飛び上がる
    data modify entity @s Motion[1] set value 0.5d
