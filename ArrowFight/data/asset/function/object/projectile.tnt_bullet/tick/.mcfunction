#> asset:object/projectile.tnt_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# Super
    function asset:object/super.tick
