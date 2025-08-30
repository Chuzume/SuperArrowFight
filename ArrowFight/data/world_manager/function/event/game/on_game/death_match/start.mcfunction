#> world_manager:event/game/on_game/death_match/start
#
# 
#
# @within function world_manager:event/game/on_game/death_match/tick

tellraw @a {"color":"red","fallback":"The island is heating up from below!","translate":"game.death_match.start","underlined":true}
execute at @a run playsound minecraft:item.mace.smash_ground_heavy neutral @p ~ ~ ~ 1 0.5
