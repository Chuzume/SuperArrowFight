#> asset:mob/trader.arrow_shop/init/
#
# Mobのinit時の処理
#
# @within asset:mob/trader.arrow_shop/init

# Attribute周り
    attribute @s minecraft:movement_speed base set 0
    attribute @s minecraft:jump_strength base set 0

# 商品
    # 通常矢
        data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone",count:1},sell:{id:"minecraft:grass_block",count:1}}
        data modify entity @s Offers.Recipes[0].buy set value {id:"minecraft:iron_ingot",count:1}
        #data modify entity @s Offers.Recipes[0].buyB set value {id:"minecraft:diamond",count:1}
        data modify entity @s Offers.Recipes[0].sell set value {id:"minecraft:arrow",count:2,components:{"minecraft:custom_name":{"color":"white","italic":false,"text":"ふつうの矢"},"minecraft:lore":[{"color":"white","italic":false,"text":"特にこれといった効果のない、普通の矢。","minecraft:custom_data":{object_id:projectile.normal_arrow}}]}}
        #give @p arrow[custom_name={"color":"white","italic":false,"text":"ふつうの矢"},lore=[{"color":"white","italic":false,"text":"特にこれといった効果のない、普通の矢。"}],custom_data={projectyle_data:normal_arrow}] 1
        #give @p arrow[custom_name={"color":"white","italic":false,"text":"ふつうの矢"},lore=[[{"color":"white","italic":false,"text":"着弾地点の周辺を燃やす。"},{"color":"gold","text":"普通の矢。"}],[{"color":"white","italic":false,"text":"着弾地点の周辺を燃やす。"},{"color":"gold","text":"普通の矢。"}]],custom_data={projectyle_data:normal_arrow}] 1
    # 焼夷矢
