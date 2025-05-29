#> asset:object/system.map_generate_button/init/
#
# Objectのinit時の処理、ただしマクロを使う影響でここではあんまり何もしない
#
# @within asset:object/_alias/system.map_generate_button/init

function asset:object/system.map_generate_button/init/m with storage asset:context this
particle minecraft:instant_effect ~ ~0.5 ~ 0.2 0.2 0.2 0.0 10
