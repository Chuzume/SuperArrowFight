#Ice
playsound minecraft:entity.arrow.hit_player master @a 506 144 505 0.2 0.7
setblock 506 144 505 minecraft:birch_button[face=wall,facing=north,powered=false]
summon area_effect_cloud 506 145 506 {CustomNameVisible:1b,Duration:99999999,Tags:["iceLabel"],CustomName:"{\"text\":\"Ice\",\"color\":\"aqua\",\"bold\":\"true\"}"}
summon armor_stand 506 143.5 506 {Team:"label",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["rotate_left","iceLabel","mapLabel"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}]}

#Cliffs
playsound minecraft:entity.arrow.hit_player master @a 494 144 505 0.2 0.7
setblock 494 144 505 minecraft:birch_button[face=wall,facing=north,powered=false]
summon area_effect_cloud 494 145 506 {CustomNameVisible:1b,Duration:99999999,Tags:["cliffsLabel"],CustomName:"{\"text\":\"Cliffs\",\"color\":\"gold\",\"bold\":\"true\"}"}
summon armor_stand 494 143.5 506 {Team:"label",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["rotate_right","cliffsLabel","mapLabel"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:red_sand",Count:1b}]}


#set button
setblock 500 144 505 minecraft:jungle_button[face=wall,facing=north,powered=false]