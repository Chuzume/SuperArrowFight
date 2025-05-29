#> asset:object/projectile.zombie_bullet/hit/
#
# 継承先などから実行される処理
#
# @within asset:object/_alias/projectile.zombie_bullet/hit

# 武装したゾンビだ！
    summon zombie ~ ~ ~ {Motion:[0.0,0.5,0.0],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},mainhand:{id:"minecraft:wooden_sword",count:1}},drop_chances:{head:0.000,mainhand:0.000}}
    summon zombie ~ ~ ~ {Motion:[0.1,0.5,0.1],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},mainhand:{id:"minecraft:wooden_sword",count:1}},drop_chances:{head:0.000,mainhand:0.000}}
    summon zombie ~ ~ ~ {Motion:[0.1,0.5,-0.1],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},mainhand:{id:"minecraft:wooden_sword",count:1}},drop_chances:{head:0.000,mainhand:0.000}}
    summon zombie ~ ~ ~ {Motion:[-0.1,0.5,0.1],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},mainhand:{id:"minecraft:wooden_sword",count:1}},drop_chances:{head:0.000,mainhand:0.000}}
    summon zombie ~ ~ ~ {Motion:[-0.0,0.5,-0.1],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},mainhand:{id:"minecraft:wooden_sword",count:1}},drop_chances:{head:0.000,mainhand:0.000}}
    summon zombie ~ ~ ~ {Motion:[-0.0,0.5,-0.1],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},mainhand:{id:"minecraft:wooden_sword",count:1}},drop_chances:{head:0.000,mainhand:0.000}}
    summon zombie ~ ~ ~ {Motion:[-0.0,0.5,-0.1],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},mainhand:{id:"minecraft:wooden_sword",count:1}},drop_chances:{head:0.000,mainhand:0.000}}

# 演出
    playsound minecraft:entity.zombie.hurt neutral @a ~ ~ ~ 1.5 1
    playsound minecraft:block.trial_spawner.spawn_mob player @a ~ ~ ~ 1 1
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force @a[distance=..64]
    particle minecraft:electric_spark ~ ~1 ~ 0 0 0 1 100 force @a[distance=..64]

# Super
    function asset:object/super.method
