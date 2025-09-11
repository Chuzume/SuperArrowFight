#> asset:object/system.random_team/tick/active
#
# チームランダム振り分け
#
# @within function asset:object/system.random_team/tick/

scoreboard players set $TeamAssign Temporary 0
execute as @a[sort=random,team=!Team.Spectator,distance=..128] store result score @s Temporary run scoreboard players add $TeamAssign Temporary 1
scoreboard players operation @a[team=!Team.Spectator,distance=..128] Temporary %= $2 Const
team join Team.Blue @a[scores={Temporary=0}]
team join Team.Red @a[scores={Temporary=1}]
scoreboard players reset @a Temporary
scoreboard players reset $TeamAssign Temporary
