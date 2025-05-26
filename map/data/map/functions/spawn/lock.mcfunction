setblock 500 148 491 minecraft:stone_button[face=floor,facing=south,powered=true]
data merge entity @e[type=armor_stand,tag=start,limit=1] {Tags:["start"],CustomName: "{\"bold\":true,\"color\":\"white\",\"text\":\"Game in progress\"}"}

#Map selection
execute if block 500 144 505 minecraft:jungle_button run scoreboard players set CloseSelectionMenu value 1
setblock 500 144 505 minecraft:stone_button[powered=true]