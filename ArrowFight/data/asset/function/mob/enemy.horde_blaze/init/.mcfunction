#> asset:mob/enemy.horde_blaze/init/
#
# Mobのinit時の処理
#
# @within asset_manager:mob/triggers/init/init.m

# フィールドのチームによって実際のチームを変える
    execute if data storage asset:context this{Team:Blue} run team join Team.Blue
    execute if data storage asset:context this{Team:Red} run team join Team.Red

# 体力設定
    attribute @s max_health base set 10
    data modify entity @s Health set value 10.0f

# そこら辺のやつの方を向く
    rotate @s facing entity @p[distance=..16] feet
