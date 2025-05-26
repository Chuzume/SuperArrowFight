#Start button
setblock 500 148 491 minecraft:oak_button[face=floor,facing=north,powered=false]
data merge entity @e[type=armor_stand,tag=start,limit=1] {Tags:["animate_start","start"],CustomName: "{\"bold\":true,\"color\":\"yellow\",\"text\":\"Start Game\"}"}

#Map selection
setblock 500 144 505 minecraft:acacia_button[powered=false]