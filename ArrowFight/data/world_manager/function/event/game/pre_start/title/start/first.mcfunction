#> world_manager:event/game/pre_start/title/start/first
#
# 
#
# @within function world_manager:event/game/pre_start/

# タイトルの時間を指定
    title @s times 0 10 0

# サウンド
    playsound minecraft:item.goat_horn.sound.1 master @s ~ ~ ~ 1 1
    playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 1 2

# ゲームモードを変更、ただしクリエのときはやらない
    gamemode survival @s[gamemode=!creative]
