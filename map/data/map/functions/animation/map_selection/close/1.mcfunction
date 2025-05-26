execute unless block 500 144 505 minecraft:stone_button run setblock 500 144 505 minecraft:acacia_button[face=wall,facing=north,powered=false]

scoreboard players set AnimateMapLabel value 1
data merge entity @e[type=minecraft:area_effect_cloud,tag=mapLabel,limit=1] {CustomName:"{\"text\":\"Select Map\",\"bold\":true,\"color\":\"gold\"}"}