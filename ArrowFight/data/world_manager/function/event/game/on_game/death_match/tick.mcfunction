#> world_manager:event/game/on_game/death_match/tick
#
# デスマッチ処理
#
# @within function world_manager:event/game/on_game/tick

# 開幕
    execute if score $Game Game.Tick matches 9000 run function world_manager:event/game/on_game/death_match/start

# 島が消えていく…
    # 予告
        execute if score $Game Game.Tick matches 9000 run execute positioned ~ 100 ~ positioned ~ ~ ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 9100 run execute positioned ~ 100 ~ positioned ~ ~1 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 9200 run execute positioned ~ 100 ~ positioned ~ ~2 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 9300 run execute positioned ~ 100 ~ positioned ~ ~3 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 9400 run execute positioned ~ 100 ~ positioned ~ ~4 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 9500 run execute positioned ~ 100 ~ positioned ~ ~5 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 9600 run execute positioned ~ 100 ~ positioned ~ ~6 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 9700 run execute positioned ~ 100 ~ positioned ~ ~7 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 9800 run execute positioned ~ 100 ~ positioned ~ ~8 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 9900 run execute positioned ~ 100 ~ positioned ~ ~9 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 10000 run execute positioned ~ 100 ~ positioned ~ ~10 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 10100 run execute positioned ~ 100 ~ positioned ~ ~11 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 10200 run execute positioned ~ 100 ~ positioned ~ ~12 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 10300 run execute positioned ~ 100 ~ positioned ~ ~13 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 10400 run execute positioned ~ 100 ~ positioned ~ ~14 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 10500 run execute positioned ~ 100 ~ positioned ~ ~15 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 10600 run execute positioned ~ 100 ~ positioned ~ ~16 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 10700 run execute positioned ~ 100 ~ positioned ~ ~17 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 10800 run execute positioned ~ 100 ~ positioned ~ ~18 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 10900 run execute positioned ~ 100 ~ positioned ~ ~19 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 11000 run execute positioned ~ 100 ~ positioned ~ ~20 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 11100 run execute positioned ~ 100 ~ positioned ~ ~21 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 11200 run execute positioned ~ 100 ~ positioned ~ ~22 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 11300 run execute positioned ~ 100 ~ positioned ~ ~23 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 11400 run execute positioned ~ 100 ~ positioned ~ ~24 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 11500 run execute positioned ~ 100 ~ positioned ~ ~25 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 11600 run execute positioned ~ 100 ~ positioned ~ ~26 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 11700 run execute positioned ~ 100 ~ positioned ~ ~27 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 11800 run execute positioned ~ 100 ~ positioned ~ ~28 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
        execute if score $Game Game.Tick matches 11900 run execute positioned ~ 100 ~ positioned ~ ~29 ~ run fill 530 ~ 580 470 ~ 534 sculk replace #lib:deathmatch_replaceable
    # 溶岩
        execute if score $Game Game.Tick matches 9100 run execute positioned ~ 100 ~ positioned ~ ~0 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 9200 run execute positioned ~ 100 ~ positioned ~ ~1 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 9300 run execute positioned ~ 100 ~ positioned ~ ~2 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 9400 run execute positioned ~ 100 ~ positioned ~ ~3 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 9500 run execute positioned ~ 100 ~ positioned ~ ~4 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 9600 run execute positioned ~ 100 ~ positioned ~ ~5 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 9700 run execute positioned ~ 100 ~ positioned ~ ~6 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 9800 run execute positioned ~ 100 ~ positioned ~ ~7 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 9900 run execute positioned ~ 100 ~ positioned ~ ~8 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 10000 run execute positioned ~ 100 ~ positioned ~ ~9 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 10100 run execute positioned ~ 100 ~ positioned ~ ~10 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 10200 run execute positioned ~ 100 ~ positioned ~ ~11 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 10300 run execute positioned ~ 100 ~ positioned ~ ~12 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 10400 run execute positioned ~ 100 ~ positioned ~ ~13 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 10500 run execute positioned ~ 100 ~ positioned ~ ~14 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 10600 run execute positioned ~ 100 ~ positioned ~ ~15 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 10700 run execute positioned ~ 100 ~ positioned ~ ~16 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 10800 run execute positioned ~ 100 ~ positioned ~ ~17 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 10900 run execute positioned ~ 100 ~ positioned ~ ~18 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 11000 run execute positioned ~ 100 ~ positioned ~ ~19 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 11100 run execute positioned ~ 100 ~ positioned ~ ~20 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 11200 run execute positioned ~ 100 ~ positioned ~ ~21 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 11300 run execute positioned ~ 100 ~ positioned ~ ~22 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 11400 run execute positioned ~ 100 ~ positioned ~ ~23 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 11500 run execute positioned ~ 100 ~ positioned ~ ~24 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 11600 run execute positioned ~ 100 ~ positioned ~ ~25 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 11700 run execute positioned ~ 100 ~ positioned ~ ~26 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 11800 run execute positioned ~ 100 ~ positioned ~ ~27 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 11900 run execute positioned ~ 100 ~ positioned ~ ~28 ~ run fill 530 ~ 580 470 ~ 534 air
        execute if score $Game Game.Tick matches 12000 run execute positioned ~ 100 ~ positioned ~ ~29 ~ run fill 530 ~ 580 470 ~ 534 air
