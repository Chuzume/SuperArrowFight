#> asset:mob/prototype_wood_doll/init/
#
# Mobのinit時の処理
#
# @within asset:mob/_alias/prototype_wood_doll/init

# 能力値の調整
    attribute @s movement_speed base set 0
    attribute @s jump_strength base set 0
    effect give @s invisibility infinite 0 true
    data modify entity @s IsImmuneToZombification set value true
    data modify entity @s Silent set value true

# モデルの召喚など
    # 高さ調整用のInteractionを召喚、乗せる
        summon interaction ~ ~ ~ {width:0.1f,height:-2f,Tags:["HeightAdjuster","AllowProcessingCommonTag","AutoKillWhenDieVehicle"]}
        ride @n[type=interaction,distance=..0.1] mount @s
    # モデルを召喚
        execute rotated ~ 0 run function animated_java:wood_doll_test/summon {args:{animation:neutral, start_animation: true}}
    # さっきのInteractionの上に乗せる
        ride @n[type=item_display,tag=prototype_wood_doll.ModelRoot,distance=..0.1] mount @n[type=interaction,distance=..1]

# イステスト
    summon item_display ~ ~ ~ {interpolation_duration:1,teleport_duration:0,Tags:["TestChair"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:spruce_slab",count:1}}
    ride @p mount @n[tag=TestChair]
