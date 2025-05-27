#> asset:object/projectile.napalm_arrow/init/
#
# Objectのinit時の処理
#
# @within asset:object/_alias/projectile.napalm_arrow/init

# ダメージ調整
    data modify entity @s damage set value 1

# 拾えないよ！
    data modify entity @s pickup set value 0b

# 燃えてるよ！
    data modify entity @s Fire set value 2000s
