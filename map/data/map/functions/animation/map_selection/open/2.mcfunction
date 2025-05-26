#Jungle
playsound minecraft:entity.arrow.hit_player master @a 502 144 505 0.2 0.5
setblock 502 144 505 minecraft:birch_button[face=wall,facing=north,powered=false]
summon area_effect_cloud 502 145 506 {CustomNameVisible:1b,Duration:99999999,Tags:["jungleLabel"],CustomName:"{\"text\":\"Jungle\",\"color\":\"green\",\"bold\":\"true\"}"}
summon armor_stand 502 143.5 506 {Team:"label",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["rotate_left","jungleLabel","mapLabel"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:jungle_leaves",Count:1b}]}

#Desert
playsound minecraft:entity.arrow.hit_player master @a 498 144 505 0.2 0.5
setblock 498 144 505 minecraft:birch_button[face=wall,facing=north,powered=false]
summon area_effect_cloud 498 145 506 {CustomNameVisible:1b,Duration:99999999,Tags:["desertLabel"],CustomName:"{\"text\":\"Desert\",\"color\":\"yellow\",\"bold\":\"true\"}"}
summon armor_stand 498 143.5 506 {Team:"label",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["rotate_right","desertLabel","mapLabel"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:sand",Count:1b}]}