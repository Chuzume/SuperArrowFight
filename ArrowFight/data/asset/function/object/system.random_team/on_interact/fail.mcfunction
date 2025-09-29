#> asset:object/system.random_team/on_interact/fail
#
# 
#
# @within function asset:object/system.random_team/on_interact/

# 演出
    playsound minecraft:block.wooden_door.close block @a ~ ~ ~ 1 2
    particle minecraft:dust_plume ~ ~1 ~ 0 0 0 0.1 10

# メッセージ
    execute on target run title @s[team=!Team.Spectator] actionbar [{"fallback":"The game is already in progress!","translate":"lobby.message.random_team_fail"}]
