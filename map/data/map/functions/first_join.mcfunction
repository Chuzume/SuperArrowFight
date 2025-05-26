tp @s 500.5 147.5 484.5 0 0
team join spec @s
gamemode adventure @s

item replace entity @s enderchest.24 with black_banner{HideFlags:33,BlockEntityTag:{Base:1,Patterns:[{Color:14,Pattern:"gra"},{Color:1,Pattern:"gru"},{Color:4,Pattern:"gru"},{Color:5,Pattern:"gru"},{Color:3,Pattern:"gru"}]},unench:1b,display:{Lore:["{\"text\":\" \"}","{\"text\":\"  Click to purchase\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"    for 20 tokens!\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\" \"}"],Name:"{\"text\":\"Rainbow Particle Trail\",\"color\":\"red\",\"italic\":\"false\"}"}}
item replace entity @s enderchest.16 with blaze_powder{unench:1b,display:{Lore:["{\"text\":\" \"}","{\"text\":\" Click to purchase\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"   for 10 tokens!\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\" \"}"],Name:"{\"text\":\"Flame Particle Trail\",\"color\":\"red\",\"italic\":\"false\"}"}}
item replace entity @s enderchest.12 with emerald{unench:1b,display:{Lore:["{\"text\":\" \"}","{\"text\":\"  Click to purchase\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"     for 3 tokens!\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\" \"}"],Name:"{\"text\":\"Sparkle Particle Trail\",\"color\":\"red\",\"italic\":\"false\"}"}}
item replace entity @s enderchest.14 with enchanting_table{unench:1b,display:{Lore:["{\"text\":\" \"}","{\"text\":\"     Click to purchase\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"        for 5 tokens!\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\" \"}"],Name:"{\"text\":\"Enchantment Particle Trail\",\"color\":\"red\",\"italic\":\"false\"}"}}
item replace entity @s enderchest.10 with ender_eye{unench:1b,display:{Lore:["{\"text\":\" \"}","{\"text\":\"  Click to purchase\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"     for 1 token!\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\" \"}"],Name:"{\"text\":\"Portal Particle Trail\",\"color\":\"red\",\"italic\":\"false\"}"}}
item replace entity @s enderchest.20 with firework_rocket{unench:1b,display:{Lore:["{\"text\":\" \"}","{\"text\":\"  Click to purchase\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"    for 10 tokens!\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\" \"}"],Name:"{\"text\":\"Rocket Particle Trail\",\"color\":\"red\",\"italic\":\"false\"}"}}
item replace entity @s enderchest.22 with red_banner{HideFlags:33,BlockEntityTag:{Base:1,Patterns:[{Color:3,Pattern:"lud"}]},unench:1b,display:{Lore:["{\"text\":\" \"}","{\"text\":\"    Click to purchase\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\"      for 15 tokens!\",\"color\":\"gray\",\"italic\":\"false\"}","{\"text\":\" \"}","{\"text\":\"      Color Matches\",\"color\":\"dark_gray\",\"italic\":\"false\"}","{\"text\":\"        Your  Team\",\"color\":\"dark_gray\",\"italic\":\"false\"}","{\"text\":\" \"}"],Name:"{\"text\":\"Team Pride Particle Trail\",\"color\":\"red\",\"italic\":\"false\"}"}}

tag @s add shop_blackEnch
tag @s add shop_powderEnch
tag @s add shop_emeraldEnch
tag @s add shop_tableEnch
tag @s add shop_eyeEnch
tag @s add shop_rocketEnch
tag @s add shop_redEnch

recipe give @s *
recipe take @s minecraft:tnt