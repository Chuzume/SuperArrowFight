#> world_manager:event/game/pre_start/summon_trader
#
# 
#
# @within function world_manager:event/game/pre_start/

# アーマースタンドの位置に召喚
    execute at @e[type=armor_stand,tag=TraderSpawnPoint,distance=..128] run function api:mob/summon.m {ID:trader.arrow_shop}

# アーマースタンドをキル
    kill @e[type=armor_stand,tag=TraderSpawnPoint,distance=..128]
