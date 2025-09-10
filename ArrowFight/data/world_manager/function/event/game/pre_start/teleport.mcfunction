#> world_manager:event/game/pre_start/teleport
#
# マップに応じた座標に各チームを転送
#
# @within function world_manager:event/game/pre_start/

# 演出
    execute at @s run function world_manager:event/game/pre_start/teleport_vfx

# マップに応じて違う場所に転送する
    # Ice
        execute if data storage world_manager: Game{LoadedMap:ice} run spreadplayers 481 557 1 2 under 130 false @s[team=Team.Blue]
        execute if data storage world_manager: Game{LoadedMap:ice} run spreadplayers 519 557 1 2 under 130 false @s[team=Team.Red]
    # FlowerVille
        execute if data storage world_manager: Game{LoadedMap:flowerville} run spreadplayers 488 557 1 2 under 130 false @s[team=Team.Blue]
        execute if data storage world_manager: Game{LoadedMap:flowerville} run spreadplayers 512 557 1 2 under 130 false @s[team=Team.Red]
    # Jungle
        execute if data storage world_manager: Game{LoadedMap:jungle} run spreadplayers 490 557 1 2 under 130 false @s[team=Team.Blue]
        execute if data storage world_manager: Game{LoadedMap:jungle} run spreadplayers 510 557 1 2 under 130 false @s[team=Team.Red]
    # Sand
        execute if data storage world_manager: Game{LoadedMap:desert} run spreadplayers 489 557 1 2 under 130 false @s[team=Team.Blue]
        execute if data storage world_manager: Game{LoadedMap:desert} run spreadplayers 511 557 1 2 under 130 false @s[team=Team.Red]
    # Moutains
        execute if data storage world_manager: Game{LoadedMap:mountains} run spreadplayers 488 557 1 2 under 130 false @s[team=Team.Blue]
        execute if data storage world_manager: Game{LoadedMap:mountains} run spreadplayers 512 557 1 2 under 130 false @s[team=Team.Red]
    # Cliff
        execute if data storage world_manager: Game{LoadedMap:cliff} run spreadplayers 489 557 1 1 under 130 false @s[team=Team.Blue]
        execute if data storage world_manager: Game{LoadedMap:cliff} run spreadplayers 511 557 1 1 under 130 false @s[team=Team.Red]

# 向きを変える
    execute if entity @s[team=Team.Blue] at @s run tp @s ~ ~ ~ -90 0
    execute if entity @s[team=Team.Red] at @s run tp @s ~ ~ ~ 90 0

# 手持ちを消去
    clear @s

# フェイルセーフ
    advancement revoke @s only core:handler/damage

# 初期装備
    give @s bow[unbreakable={}]
    give @s stone_pickaxe
    give @s stone_axe
    give @s stone_shovel

# エフェクト付与
    effect give @a minecraft:regeneration infinite 0 true

# バトルモードにする
    function player_manager:mode/battle

# 演出
    execute at @s run function world_manager:event/game/pre_start/teleport_vfx
 