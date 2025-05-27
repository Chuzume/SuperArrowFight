#> world_manager:event/game/pre_start/teleport_vfx
#
# テレポート演出
#
# @within function world_manager:event/game/pre_start/

particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force @a[distance=..32]
particle minecraft:dust{color:[0.8,0.3,1.0],scale:1} ~ ~1 ~ 0.3 0.5 0.3 1 50 force @a[distance=..32]
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1.5
