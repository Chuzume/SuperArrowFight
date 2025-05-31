#> asset:object/system.map_generate_button/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# クールタイム減算
    scoreboard players remove @s system.map_generate_button.CoolTime 1
    execute if score @s system.map_generate_button.CoolTime matches ..0 run scoreboard players reset @s system.map_generate_button.CoolTime

# 触れられた場合の処理。クールタイムが設定されてたら実行されない。
    execute unless score @s system.map_generate_button.CoolTime matches 0.. if data entity @s interaction run function asset:object/system.map_generate_button/tick/interacted.m with storage asset:context this

# アイコンを回す
    execute on passengers if entity @s[type=item_display] at @s run rotate @s ~-2.5 ~

# リセット
    data remove entity @s interaction
