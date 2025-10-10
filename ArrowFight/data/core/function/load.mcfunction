#> core:load
#
# ロード処理
#
# @within tag/function minecraft:load

# 初期ロード
    execute unless data storage world_manager: Game{Init:true} run function core:load_init/

# その他初期化が必要なもの
    function #asset:mob/load
    function #asset:item/load
    function #asset:object/load
