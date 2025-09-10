#> asset:mob/trader.arrow_shop/summon/
#
# Mob召喚処理の呼び出し時の処理のエイリアス
#
# @within asset_manager:mob/summon/summon.m

# 元となるEntityを召喚する
    summon wandering_trader ~ ~ ~ {Tags:["MobInit"],Offers:{Recipes:[]}}
