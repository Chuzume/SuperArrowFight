#> asset:mob/enemy.horde_creeper/summon/
#
# Mob召喚処理の呼び出し時の処理のエイリアス
#
# @within asset_manager:mob/summon/summon.m

# 元となるEntityを召喚する
    summon creeper ~ ~ ~ {Tags:["MobInit"]}
