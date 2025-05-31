#> asset:object/projectile.meteor/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m
          
# パーティクル
    particle dust{color:[1,0.3,0.0],scale:1} ~ ~ ~ 0.2 0.2 0.2 1 5 force @a[distance=..64]
    particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..64]

# マーカーの向きに下のエンダーパールを進ませ続ける
    data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.Speed
    execute on vehicle run function lib:motion/

# Super
    function asset:object/super.tick
