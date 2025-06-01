#> asset:mob/enemy.horde_blaze/summon/
#
# Mob召喚処理の呼び出し時の処理のエイリアス
#
# @within asset_manager:mob/summon/summon.m

# 元となるEntityを召喚する
    summon blaze ~ ~ ~ {Tags:["MobInit","VanishOnReset","VanishOnExitArena"]}
