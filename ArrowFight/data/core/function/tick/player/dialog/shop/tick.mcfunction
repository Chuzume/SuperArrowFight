#> core:tick/player/dialog/shop/tick
#
# 
#
# @within function core:tick/player/dialog/tick

# Trigger1以上で実行
    execute if score @s Trigger.DialogShop matches 1.. run function core:tick/player/dialog/shop/open

# -1に設定されたら閉じる
    execute if score @s Trigger.DialogShop matches -1 run function core:tick/player/dialog/shop/close
