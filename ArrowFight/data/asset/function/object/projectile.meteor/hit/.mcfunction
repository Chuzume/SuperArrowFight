#> asset:object/projectile.meteor/hit/
#
# 継承先などから実行される処理
#
# @within asset_manager:object/call_method/run_method.m

# 
    summon tnt ~ ~ ~ {fuse:0,explosion_power:2,block_state:{Name:"minecraft:air"}}

# Super
    function asset:object/super.method
