playsound minecraft:entity.zombie_villager.cure ambient @a

#Mobs
execute if block ~3 ~2 ~3 air run summon blaze ~3 ~2 ~3 {Tags:["mapMob","netherArrowMob"]}
execute if block ~-3 ~2 ~-3 air run summon blaze ~-3 ~2 ~-3 {Tags:["mapMob","netherArrowMob"]}
execute if block ~-3 ~2 ~3 air run summon magma_cube ~-3 ~2 ~3 {Tags:["mapMob","netherArrowMob"]}
execute if block ~3 ~2 ~-3 air run summon magma_cube ~3 ~2 ~-3 {Tags:["mapMob","netherArrowMob"]}
execute if entity @s[team=red] run team join blue @e[tag=netherArrowMob]
execute if entity @s[team=blue] run team join red @e[tag=netherArrowMob]
execute if entity @s[tag=shotFromRed] run team join red @e[tag=netherArrowMob]
execute if entity @s[tag=shotFromBlue] run team join blue @e[tag=netherArrowMob]

#Blocks
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace #arrows:toair
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 structure_void replace water
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 lava replace structure_void
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 structure_void replace #arrows:tofire
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 crimson_nylium replace #arrows:grasses
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 netherrack replace #arrows:tonetherrack
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 fire replace structure_void
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 polished_basalt replace #minecraft:logs
fill ~4 ~4 ~4 ~-4 ~-4 ~-4 nether_quartz_ore replace #arrows:toquartz

fill ~5 ~4 ~-2 ~5 ~-4 ~2 air replace #arrows:toair
fill ~5 ~4 ~-2 ~5 ~-4 ~2 structure_void replace water
fill ~5 ~4 ~-2 ~5 ~-4 ~2 lava replace structure_void
fill ~5 ~4 ~-2 ~5 ~-4 ~2 structure_void replace #arrows:tofire
fill ~5 ~4 ~-2 ~5 ~-4 ~2 crimson_nylium replace #arrows:grasses
fill ~5 ~4 ~-2 ~5 ~-4 ~2 netherrack replace #arrows:tonetherrack
fill ~5 ~4 ~-2 ~5 ~-4 ~2 fire replace structure_void
fill ~5 ~4 ~-2 ~5 ~-4 ~2 polished_basalt replace #minecraft:logs
fill ~5 ~4 ~-2 ~5 ~-4 ~2 nether_quartz_ore replace #arrows:toquartz

fill ~2 ~4 ~5 ~-2 ~-4 ~5 air replace #arrows:toair
fill ~2 ~4 ~5 ~-2 ~-4 ~5 structure_void replace water
fill ~2 ~4 ~5 ~-2 ~-4 ~5 lava replace structure_void
fill ~2 ~4 ~5 ~-2 ~-4 ~5 structure_void replace #arrows:tofire
fill ~2 ~4 ~5 ~-2 ~-4 ~5 crimson_nylium replace #arrows:grasses
fill ~2 ~4 ~5 ~-2 ~-4 ~5 netherrack replace #arrows:tonetherrack
fill ~2 ~4 ~5 ~-2 ~-4 ~5 fire replace structure_void
fill ~2 ~4 ~5 ~-2 ~-4 ~5 polished_basalt replace #minecraft:logs
fill ~2 ~4 ~5 ~-2 ~-4 ~5 nether_quartz_ore replace #arrows:toquartz

fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 air replace #arrows:toair
fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 structure_void replace water
fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 lava replace structure_void
fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 structure_void replace #arrows:tofire
fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 crimson_nylium replace #arrows:grasses
fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 netherrack replace #arrows:tonetherrack
fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 fire replace structure_void
fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 polished_basalt replace #minecraft:logs
fill ~-5 ~4 ~2 ~-5 ~-4 ~-2 nether_quartz_ore replace #arrows:toquartz

fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 air replace #arrows:toair
fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 structure_void replace water
fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 lava replace structure_void
fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 structure_void replace #arrows:tofire
fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 crimson_nylium replace #arrows:grasses
fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 netherrack replace #arrows:tonetherrack
fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 fire replace structure_void
fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 polished_basalt replace #minecraft:logs
fill ~-2 ~4 ~-5 ~2 ~-4 ~-5 nether_quartz_ore replace #arrows:toquartz