#> asset:mob/enemy.horde_zombie/summon/
#
# Mob召喚処理の呼び出し時の処理のエイリアス
#
# @within asset_manager:mob/summon/summon.m

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","VanishOnReset","VanishOnExitArena"],drop_chances:{head:0.000,mainhand:0.000}}
