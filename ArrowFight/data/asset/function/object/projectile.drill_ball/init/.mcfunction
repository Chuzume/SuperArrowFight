#> asset:object/projectile.drill_ball/init/
#
# Objectのinit時の処理
#
# @within asset_manager:object/init/init.m

# サウンド、発射音なのでplayer、かつちょっと前で鳴らす
    playsound minecraft:entity.witch.throw player @a ^ ^ ^1 1 0.5

# 下の雪玉に場外で消す用のタグを付与
    execute on vehicle run tag @s add VanishOnExitArena

# 耐久値設定
#    scoreboard players set @s projectile.drill_ball.Durability 2147483647

# Super
    function asset:object/super.init
