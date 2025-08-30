#> world_manager:event/game/on_game/death_match/tick
#
# デスマッチ処理
#
# @within function world_manager:event/game/on_game/tick

# 開幕
    execute if score $Game Game.Tick matches 9000 run function world_manager:event/game/on_game/death_match/start

# 熱くなっていくぞ
    # 予告
        execute if score $Game Game.Tick matches 9040 run execute positioned ~ 100 ~ positioned ~ ~1 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9080 run execute positioned ~ 100 ~ positioned ~ ~2 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9120 run execute positioned ~ 100 ~ positioned ~ ~3 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9160 run execute positioned ~ 100 ~ positioned ~ ~4 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9200 run execute positioned ~ 100 ~ positioned ~ ~5 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9240 run execute positioned ~ 100 ~ positioned ~ ~6 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9280 run execute positioned ~ 100 ~ positioned ~ ~7 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9320 run execute positioned ~ 100 ~ positioned ~ ~8 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9360 run execute positioned ~ 100 ~ positioned ~ ~9 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9400 run execute positioned ~ 100 ~ positioned ~ ~10 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9440 run execute positioned ~ 100 ~ positioned ~ ~11 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9480 run execute positioned ~ 100 ~ positioned ~ ~12 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9520 run execute positioned ~ 100 ~ positioned ~ ~13 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9560 run execute positioned ~ 100 ~ positioned ~ ~14 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9600 run execute positioned ~ 100 ~ positioned ~ ~15 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9640 run execute positioned ~ 100 ~ positioned ~ ~16 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9680 run execute positioned ~ 100 ~ positioned ~ ~17 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9720 run execute positioned ~ 100 ~ positioned ~ ~18 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9760 run execute positioned ~ 100 ~ positioned ~ ~19 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9800 run execute positioned ~ 100 ~ positioned ~ ~20 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9840 run execute positioned ~ 100 ~ positioned ~ ~21 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9880 run execute positioned ~ 100 ~ positioned ~ ~22 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9920 run execute positioned ~ 100 ~ positioned ~ ~23 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9960 run execute positioned ~ 100 ~ positioned ~ ~24 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 10000 run execute positioned ~ 100 ~ positioned ~ ~25 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 10040 run execute positioned ~ 100 ~ positioned ~ ~26 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 10080 run execute positioned ~ 100 ~ positioned ~ ~27 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 10120 run execute positioned ~ 100 ~ positioned ~ ~28 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 10160 run execute positioned ~ 100 ~ positioned ~ ~29 ~ run fill 530 ~ 580 470 ~ 534 magma_block replace #asset:object/projectile.drill_ball/breakable
    # 溶岩
        execute if score $Game Game.Tick matches 9080 run execute positioned ~ 100 ~ positioned ~ ~1 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9120 run execute positioned ~ 100 ~ positioned ~ ~2 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9160 run execute positioned ~ 100 ~ positioned ~ ~3 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9200 run execute positioned ~ 100 ~ positioned ~ ~4 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9240 run execute positioned ~ 100 ~ positioned ~ ~5 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9280 run execute positioned ~ 100 ~ positioned ~ ~6 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9320 run execute positioned ~ 100 ~ positioned ~ ~7 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9360 run execute positioned ~ 100 ~ positioned ~ ~8 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9400 run execute positioned ~ 100 ~ positioned ~ ~9 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9440 run execute positioned ~ 100 ~ positioned ~ ~10 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9480 run execute positioned ~ 100 ~ positioned ~ ~11 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9520 run execute positioned ~ 100 ~ positioned ~ ~12 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9560 run execute positioned ~ 100 ~ positioned ~ ~13 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9600 run execute positioned ~ 100 ~ positioned ~ ~14 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9640 run execute positioned ~ 100 ~ positioned ~ ~15 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9680 run execute positioned ~ 100 ~ positioned ~ ~16 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9720 run execute positioned ~ 100 ~ positioned ~ ~17 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9760 run execute positioned ~ 100 ~ positioned ~ ~18 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9800 run execute positioned ~ 100 ~ positioned ~ ~19 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9840 run execute positioned ~ 100 ~ positioned ~ ~20 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9880 run execute positioned ~ 100 ~ positioned ~ ~21 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9920 run execute positioned ~ 100 ~ positioned ~ ~22 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 9960 run execute positioned ~ 100 ~ positioned ~ ~23 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 10000 run execute positioned ~ 100 ~ positioned ~ ~24 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 10040 run execute positioned ~ 100 ~ positioned ~ ~25 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 10080 run execute positioned ~ 100 ~ positioned ~ ~26 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 10120 run execute positioned ~ 100 ~ positioned ~ ~27 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 10160 run execute positioned ~ 100 ~ positioned ~ ~28 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
        execute if score $Game Game.Tick matches 10200 run execute positioned ~ 100 ~ positioned ~ ~29 ~ run fill 530 ~ 580 470 ~ 534 lava replace #asset:object/projectile.drill_ball/breakable
