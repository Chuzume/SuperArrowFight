#> asset:mob/trader.arrow_shop/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:mob/triggers/tick/tick.m

# 場外に出たらテレポートして戻ってくる、ただしデスマッチが始まってないなら
    execute if entity @s[team=Team.Blue] unless predicate world_manager:area/battle_field/blue_island unless score $Game Game.Tick matches 9000.. run function asset:mob/trader.arrow_shop/tick/teleport
    execute if entity @s[team=Team.Red] unless predicate world_manager:area/battle_field/red_island unless score $Game Game.Tick matches 9000.. run function asset:mob/trader.arrow_shop/tick/teleport
