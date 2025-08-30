#> core:give_user_id
#
# 
#
# @within function core:tick

#> UserIDのIndex
# @private
    #declare score_holder $UserIDIndex

# 初期スポーンへの移動とゲームモード変更
    tp @s 500 126 495 0.0 0.0
    gamemode adventure @s

# 固有ユーザーID
    scoreboard players add $UserIDIndex Global 1
    scoreboard players operation @s UserID = $UserIDIndex Global
