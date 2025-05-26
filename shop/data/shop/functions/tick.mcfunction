scoreboard players add @a wins 0

clear @a emerald{ench:1b}
clear @a emerald{unench:1b}

execute as @a[tag=shop_emeraldEnch] if entity @s[scores={boughtEmeraldP=1}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:emerald"}]}] run function shop:shop/emerald/enable
execute as @a[tag=!shop_emeraldEnch] if entity @s[scores={boughtEmeraldP=1}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:emerald"}]}] run function shop:shop/emerald/disable
execute as @a[tag=shop_emeraldEnch] unless entity @s[scores={boughtEmeraldP=1}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:emerald"}]}] run function shop:shop/emerald/buy

clear @a ender_eye{ench:1b}
clear @a ender_eye{unench:1b}

execute as @a[tag=shop_eyeEnch] if entity @s[scores={boughtEyeP=1}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:ender_eye"}]}] run function shop:shop/ender_eye/enable
execute as @a[tag=!shop_eyeEnch] if entity @s[scores={boughtEyeP=1}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:ender_eye"}]}] run function shop:shop/ender_eye/disable
execute as @a[tag=shop_eyeEnch] unless entity @s[scores={boughtEyeP=1}] unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:ender_eye"}]}] run function shop:shop/ender_eye/buy

clear @a enchanting_table{ench:1b}
clear @a enchanting_table{unench:1b}

execute as @a[tag=shop_tableEnch] if entity @s[scores={boughtTableP=1}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:enchanting_table"}]}] run function shop:shop/enchanting_table/enable
execute as @a[tag=!shop_tableEnch] if entity @s[scores={boughtTableP=1}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:enchanting_table"}]}] run function shop:shop/enchanting_table/disable
execute as @a[tag=shop_tableEnch] unless entity @s[scores={boughtTableP=1}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:enchanting_table"}]}] run function shop:shop/enchanting_table/buy

clear @a blaze_powder{ench:1b}
clear @a blaze_powder{unench:1b}

execute as @a[tag=shop_powderEnch] if entity @s[scores={boughtPowderP=1}] unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:blaze_powder"}]}] run function shop:shop/blaze_powder/enable
execute as @a[tag=!shop_powderEnch] if entity @s[scores={boughtPowderP=1}] unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:blaze_powder"}]}] run function shop:shop/blaze_powder/disable
execute as @a[tag=shop_powderEnch] unless entity @s[scores={boughtPowderP=1}] unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:blaze_powder"}]}] run function shop:shop/blaze_powder/buy

clear @a firework_rocket{ench:1b}
clear @a firework_rocket{unench:1b}

execute as @a[tag=shop_rocketEnch] if entity @s[scores={boughtRocketP=1}] unless entity @s[nbt={EnderItems:[{Slot:20b,id:"minecraft:firework_rocket"}]}] run function shop:shop/firework_rocket/enable
execute as @a[tag=!shop_rocketEnch] if entity @s[scores={boughtRocketP=1}] unless entity @s[nbt={EnderItems:[{Slot:20b,id:"minecraft:firework_rocket"}]}] run function shop:shop/firework_rocket/disable
execute as @a[tag=shop_rocketEnch] unless entity @s[scores={boughtRocketP=1}] unless entity @s[nbt={EnderItems:[{Slot:20b,id:"minecraft:firework_rocket"}]}] run function shop:shop/firework_rocket/buy

clear @a red_banner{ench:1b}
clear @a red_banner{unench:1b}

execute as @a[tag=shop_redEnch] if entity @s[scores={boughtRedP=1}] unless entity @s[nbt={EnderItems:[{Slot:22b,id:"minecraft:red_banner"}]}] run function shop:shop/red_banner/enable
execute as @a[tag=!shop_redEnch] if entity @s[scores={boughtRedP=1}] unless entity @s[nbt={EnderItems:[{Slot:22b,id:"minecraft:red_banner"}]}] run function shop:shop/red_banner/disable
execute as @a[tag=shop_redEnch] unless entity @s[scores={boughtRedP=1}] unless entity @s[nbt={EnderItems:[{Slot:22b,id:"minecraft:red_banner"}]}] run function shop:shop/red_banner/buy

clear @a black_banner{ench:1b}
clear @a black_banner{unench:1b}

execute as @a[tag=shop_blackEnch] if entity @s[scores={boughtBlackP=1}] unless entity @s[nbt={EnderItems:[{Slot:24b,id:"minecraft:black_banner"}]}] run function shop:shop/black_banner/enable
execute as @a[tag=!shop_blackEnch] if entity @s[scores={boughtBlackP=1}] unless entity @s[nbt={EnderItems:[{Slot:24b,id:"minecraft:black_banner"}]}] run function shop:shop/black_banner/disable
execute as @a[tag=shop_blackEnch] unless entity @s[scores={boughtBlackP=1}] unless entity @s[nbt={EnderItems:[{Slot:24b,id:"minecraft:black_banner"}]}] run function shop:shop/black_banner/buy

function shop:tokens
function shop:clear_empty_slots