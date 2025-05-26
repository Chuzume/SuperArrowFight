execute as @e[type=arrow] unless entity @s[x=539,y=255,z=589,dx=-78,dy=-156,dz=-64] run kill @s
execute as @e[type=spectral_arrow] unless entity @s[x=539,y=255,z=589,dx=-78,dy=-156,dz=-64] run kill @s
execute as @e[type=tnt] unless entity @s[x=539,y=255,z=589,dx=-78,dy=-156,dz=-64] run kill @s
execute as @e[type=fireball] unless entity @s[x=539,y=255,z=589,dx=-78,dy=-156,dz=-64] run kill @s
execute as @e[type=small_fireball] unless entity @s[x=539,y=255,z=589,dx=-78,dy=-156,dz=-64] run kill @s
execute as @e[type=firework_rocket,tag=!stay] unless entity @s[x=469,y=100,z=533,dx=62,dy=50,dz=48] run kill @s
execute as @e[type=falling_block] unless entity @s[x=539,y=255,z=589,dx=-78,dy=-156,dz=-64] run kill @s

# used potion effects: conduit power, invis, fire res, slow falling, luck, strength, dolphins grace, slowness, swiftness, water breathing, leaping, night vision
function arrows:rain/tick
function arrows:creeper/tick
function arrows:fire/tick
function arrows:lightning/tick
function arrows:meteor/tick
function arrows:netherify/tick
function arrows:poison/tick
function arrows:tnt/tick
function arrows:tnt_rain/tick
function arrows:zombie/tick
function arrows:eat/tick
function arrows:rocket/tick

execute as @e[type=arrow] run data merge entity @s {Color:-1}
execute as @e[type=arrow,tag=!damageReduced] run data merge entity @s {damage:1d,Tags:["damageReduced"]}
kill @e[type=arrow,tag=!eatArrow,nbt={inGround:1b}]
execute as @e[tag=eatArrow,nbt={inBlockState:{Name:"minecraft:bedrock"}}] run kill @s
kill @e[type=spectral_arrow,nbt={inGround:1b}]






scoreboard objectives add rocketArrow dummy