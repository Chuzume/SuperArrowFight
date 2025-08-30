#> core:handler/damage
#
# ダメージを受けた際に実行される
#
# @within function core:tick/player/

# 回復停止
    effect clear @s regeneration
    scoreboard players set @s StopRegeneration 100

# Reset
    advancement revoke @s only core:handler/damage
