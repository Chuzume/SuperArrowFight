#> asset:object/projectile.meteor/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m
          
# パーティクル
    particle entity_effect{color:[0.5,1.0,0.5,1.00]} ~ ~ ~ 0.1 0.1 0.1 1 1 force @a[distance=..64]
    particle entity_effect{color:[0.0,0.7,0.0,1.00]} ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]

# マーカーの向きに下のエンダーパールを進ませ続ける
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute on vehicle run function lib:motion/

# Super
    function asset:object/super.tick
