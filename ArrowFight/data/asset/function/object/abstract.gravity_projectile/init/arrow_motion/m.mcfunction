#> asset:object/abstract.gravity_projectile/init/arrow_motion/m
#
# 
#
# @within function asset:object/abstract.gravity_projectile/init/arrow_motion/

$execute store result entity @s Motion[0] double 0.00000001 run data get entity @n[type=arrow,distance=..0.01] Motion[0] $(SpeedMultiPlier)000000
$execute store result entity @s Motion[1] double 0.00000001 run data get entity @n[type=arrow,distance=..0.01] Motion[1] $(SpeedMultiPlier)000000
$execute store result entity @s Motion[2] double 0.00000001 run data get entity @n[type=arrow,distance=..0.01] Motion[2] $(SpeedMultiPlier)000000
