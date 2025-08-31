#> world_manager:event/game/on_game/death_match/start
#
# 
#
# @within function world_manager:event/game/on_game/death_match/tick

tellraw @a [{"color":"dark_red","text":"! "},{"color":"red","fallback":"The island is heating up from below","translate":"game.message.death_matchstart"},{"color":"dark_red","text":" !"},]
execute at @a run playsound minecraft:item.mace.smash_ground_heavy neutral @p ~ ~ ~ 1 0.5
