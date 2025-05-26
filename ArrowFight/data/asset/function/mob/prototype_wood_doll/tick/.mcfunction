#> asset:mob/prototype_wood_doll/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/_alias/prototype_wood_doll/tick

# モデルに対する処理
    # 特定
        execute on passengers on passengers if entity @s[type=item_display] run tag @s add MyModel
    # 自身と同じ向きにする
        #execute at @s run rotate @n[type=item_display,tag=MyModel,distance=..0.5] ~ 0

# テストイスをいい感じの位置に持ってくる
    #execute as @n[tag=TestChair] at @n[type=item_display,tag=MyModel,distance=..0.5] positioned ~ ~1.0 ~ run tp @s ^-1 ^ ^-2 ~ 0
    execute at @n[type=item_display,tag=MyModel,distance=..0.5] positioned ~ ~1.2 ~ run tp @n[tag=TestChair] ^-1 ^ ^-3

# ゆっくりとプレイヤーのほうを向く処理を仕込んでみるか…
    execute rotated as @p rotated ~ 0 run rotate @n[type=item_display,tag=MyModel,distance=..0.5] ~ ~

# 移動テスト
    execute if entity @p[predicate=api:player/input/forward,predicate=lib:is_vehicle] rotated as @p rotated ~ 0 run function asset:mob/prototype_wood_doll/tick/move/forward

# アニメテスト
    execute if entity @s[tag=Standstill] as @n[type=item_display,tag=MyModel,distance=..0.5] unless entity @s[tag=aj.wood_doll_test.animation.neutral.playing] run function animated_java:wood_doll_test/animations/neutral/tween {duration:5, to_frame: 0}
    execute if entity @s[tag=!Standstill] as @n[type=item_display,tag=MyModel,distance=..0.5] unless entity @s[tag=aj.wood_doll_test.animation.sprint_fast.playing] run function animated_java:wood_doll_test/animations/sprint_fast/tween {duration:3, to_frame: 0}

# リセット
    execute on passengers on passengers if entity @s[type=item_display,tag=MyModel] run tag @s remove MyModel
