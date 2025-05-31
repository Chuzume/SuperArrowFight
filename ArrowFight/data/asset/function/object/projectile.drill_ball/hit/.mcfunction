#> asset:object/projectile.drill_ball/hit/
#
# 継承先などから実行される処理
#
# @within asset_manager:object/call_method/run_method.m

# 演出
    particle minecraft:crit ~ ~ ~ 0 0 0 1 10 force @a[distance=..64]
    particle item{item:"iron_pickaxe"} ~ ~ ~ 0 0 0 0.1 20 normal
    playsound minecraft:entity.item.break neutral @a ~ ~ ~ 1 1

# super
    function asset:object/super.method
