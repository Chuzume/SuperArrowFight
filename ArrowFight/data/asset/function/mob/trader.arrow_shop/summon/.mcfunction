#> asset:mob/trader.arrow_shop/summon/
#
# Mob召喚処理の呼び出し時の処理のエイリアス
#
# @within asset:mob/_alias/trader.arrow_shop/summon

# 元となるEntityを召喚する
    summon villager ~ ~ ~ {Invulnerable:true,Tags:["MobInit"],VillagerData:{level:99,profession:"minecraft:fletcher",type:"minecraft:plains"}}
