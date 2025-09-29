#> asset:object/system.random_team/on_interact/success
#
# 
#
# @within function asset:object/system.random_team/on_interact/

# 演出
    playsound minecraft:block.wooden_door.open block @a ~ ~ ~ 1 1
    playsound minecraft:block.note_block.xylophone block @a ~ ~ ~ 1 1.5
    particle minecraft:instant_effect ~ ~1 ~ 0 0 0 0.5 10

# メッセージ
    title @a[team=!Team.Spectator] actionbar [{"fallback":"Players have been randomly divided into teams!","translate":"lobby.message.random_team"}]

# 処理
    scoreboard players set $TeamAssign Temporary 0
    execute as @a[sort=random,team=!Team.Spectator,distance=..128] store result score @s Temporary run scoreboard players add $TeamAssign Temporary 1
    scoreboard players operation @a[team=!Team.Spectator,distance=..128] Temporary %= $2 Const
    team join Team.Blue @a[scores={Temporary=0}]
    team join Team.Red @a[scores={Temporary=1}]
    scoreboard players reset @a Temporary
    scoreboard players reset $TeamAssign Temporary
