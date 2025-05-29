#> asset:object/abstract.gravity_projectile_3d/tick/on_vehicle
#
# 
#
# @within function asset:object/abstract.gravity_projectile_3d/tick/

# スコア加算
    scoreboard players add @s abstract.gravity_projectile_3d.Tick 1

# start_interpolationを設定
#    execute on passengers if entity @s[tag=abstract.gravity_projectile_3d.Model] run data modify entity @s start_interpolation set value 0

# 上のモデルをスゴイ変換かけて自分の向きにする
   # execute at @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s on passengers if entity @s[tag=abstract.gravity_projectile_3d.Model] run rotate @s ~ ~

# スコアに応じてtansformationをセット
    execute if score @s abstract.gravity_projectile_3d.Tick matches 2 on passengers if entity @s[tag=abstract.gravity_projectile_3d.Model] run data modify entity @s transformation.left_rotation set value [0.707f,0f,0f,0.707f]
    execute if score @s abstract.gravity_projectile_3d.Tick matches 4 on passengers if entity @s[tag=abstract.gravity_projectile_3d.Model] run data modify entity @s transformation.left_rotation set value [1f,0f,0f,0f]
    execute if score @s abstract.gravity_projectile_3d.Tick matches 6 on passengers if entity @s[tag=abstract.gravity_projectile_3d.Model] run data modify entity @s transformation.left_rotation set value [0.707f,0f,0f,-0.707f]
    execute if score @s abstract.gravity_projectile_3d.Tick matches 8 on passengers if entity @s[tag=abstract.gravity_projectile_3d.Model] run data modify entity @s transformation.left_rotation set value [0f,0f,0f,-1f]

# スコアをリセット
    scoreboard players reset @s[scores={abstract.gravity_projectile_3d.Tick=8}] abstract.gravity_projectile_3d.Tick
