#> world_manager:event/game/pre_start/
#
# 試合前の転送とか。
#
# @within function world_manager:event/game/tick

# 参加者をフワ～っとさせる
    execute if score $Game Game.Tick matches 40 as @a[team=Team.Blue,distance=..128] at @s run function world_manager:event/game/pre_start/levitation
    execute if score $Game Game.Tick matches 40 as @a[team=Team.Red,distance=..128] at @s run function world_manager:event/game/pre_start/levitation

# 頂点辺りで転送
    execute if score $Game Game.Tick matches 80 as @a[team=Team.Blue,distance=..128] at @s run function world_manager:event/game/pre_start/teleport
    execute if score $Game Game.Tick matches 80 as @a[team=Team.Red,distance=..128] at @s run function world_manager:event/game/pre_start/teleport
