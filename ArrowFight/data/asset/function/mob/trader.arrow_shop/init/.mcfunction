#> asset:mob/trader.arrow_shop/init/
#
# Mobのinit時の処理
#
# @within asset_manager:mob/triggers/init/init.m

# Attribute周り
    attribute @s minecraft:movement_speed base set 0
    attribute @s minecraft:jump_strength base set 0

# 商品
    # 通常矢
        loot replace entity @s villager.0 loot asset:item/generic_arrow
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:iron_ingot",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[0].buy set value {id:"minecraft:iron_ingot",count:1}
        data modify entity @s Offers.Recipes[0].sell set from entity @s Inventory[0]
        data modify entity @s Offers.Recipes[0].sell.count set value 2
    # 光の矢
        loot replace entity @s villager.0 loot asset:item/generic_spectral_arrow
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[1].buy set value {id:"minecraft:iron_ingot",count:1}
        data modify entity @s Offers.Recipes[1].buyB set value {id:"minecraft:gold_ingot",count:1}
        data modify entity @s Offers.Recipes[1].sell set from entity @s Inventory[0]
        data modify entity @s Offers.Recipes[1].sell.count set value 2
    # ファイア弾
        loot replace entity @s villager.0 loot asset:item/napalm_bullet
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[2].buy set value {id:"minecraft:flint",count:1}
        data modify entity @s Offers.Recipes[2].buyB set value {id:"minecraft:iron_ingot",count:1}
        data modify entity @s Offers.Recipes[2].sell set from entity @s Inventory[0]
    # バクヤク弾
        loot replace entity @s villager.0 loot asset:item/tnt_bullet
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[3].buy set value {id:"minecraft:redstone",count:4}
        data modify entity @s Offers.Recipes[3].sell set from entity @s Inventory[0]
    # メテオレイン弾
        loot replace entity @s villager.0 loot asset:item/meteor_rain_bullet
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[4].buy set value {id:"minecraft:redstone",count:12}
        data modify entity @s Offers.Recipes[4].buyB set value {id:"minecraft:coal_block",count:1}
        data modify entity @s Offers.Recipes[4].sell set from entity @s Inventory[0]
    # イカヅチ弾
        loot replace entity @s villager.0 loot asset:item/lightning_bullet
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[5].buy set value {id:"minecraft:gold_block",count:1}
        data modify entity @s Offers.Recipes[5].sell set from entity @s Inventory[0]
    # クリーパー弾
        loot replace entity @s villager.0 loot asset:item/creeper_bullet
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[6].buy set value {id:"minecraft:iron_block",count:1}
        data modify entity @s Offers.Recipes[6].buyB set value {id:"minecraft:emerald",count:5}
        data modify entity @s Offers.Recipes[6].sell set from entity @s Inventory[0]
    # ゾンビ弾
        loot replace entity @s villager.0 loot asset:item/zombie_bullet
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[7].buy set value {id:"minecraft:iron_block",count:1}
        data modify entity @s Offers.Recipes[7].buyB set value {id:"minecraft:emerald",count:8}
        data modify entity @s Offers.Recipes[7].sell set from entity @s Inventory[0]
    # ポイズン弾
        loot replace entity @s villager.0 loot asset:item/poison_mist_bullet
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[8].buy set value {id:"minecraft:glass_bottle",count:3}
        data modify entity @s Offers.Recipes[8].sell set from entity @s Inventory[0]
    # ツルハシ弾
        loot replace entity @s villager.0 loot asset:item/mining_bullet
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[9].buy set value {id:"minecraft:cobblestone",count:12}
        data modify entity @s Offers.Recipes[9].sell set from entity @s Inventory[0]
    # ネザー化弾
        loot replace entity @s villager.0 loot asset:item/netherify_bullet
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[10].buy set value {id:"minecraft:cobblestone",count:10}
        data modify entity @s Offers.Recipes[10].buyB set value {id:"minecraft:lava_bucket",count:1}
        data modify entity @s Offers.Recipes[10].sell set from entity @s Inventory[0]
    # クリア
        clear @s
