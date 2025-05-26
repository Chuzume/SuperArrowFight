#Tulip Town
playsound minecraft:entity.arrow.hit_player master @a 504 144 505 0.2 0.6
setblock 504 144 505 minecraft:birch_button[face=wall,facing=north,powered=false]
summon area_effect_cloud 504 145 506 {CustomNameVisible:1b,Duration:99999999,Tags:["tulipLabel"],CustomName:"[{\"text\":\"T\",\"color\":\"red\",\"bold\":\"true\"},{\"text\":\"u\",\"color\":\"gold\",\"bold\":\"true\"},{\"text\":\"l\",\"color\":\"yellow\",\"bold\":\"true\"},{\"text\":\"i\",\"color\":\"green\"},{\"text\":\"p\",\"color\":\"aqua\"},{\"text\":\" T\",\"color\":\"blue\"},{\"text\":\"o\",\"color\":\"dark_blue\"},{\"text\":\"w\",\"color\":\"light_purple\"},{\"text\":\"n\",\"color\":\"dark_purple\"}]"}
summon armor_stand 504 143.5 506 {Team:"label",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["rotate_left","tulipLabel","mapLabel"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b}]}

#Mountains
playsound minecraft:entity.arrow.hit_player master @a 496 144 505 0.2 0.6
setblock 496 144 505 minecraft:birch_button[face=wall,facing=north,powered=false]
summon area_effect_cloud 496 145 506 {CustomNameVisible:1b,Duration:99999999,Tags:["mountainsLabel"],CustomName:"{\"text\":\"Mountains\",\"color\":\"gray\",\"bold\":\"true\"}"}
summon armor_stand 496 143.5 506 {Team:"label",NoGravity:1b,Marker:1b,Invisible:1b,Tags:["rotate_right","mountainsLabel","mapLabel"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}]}