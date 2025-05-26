#add in timer score for bossbar name below
bossbar set map:event name {"text":"Sudden Death in:","color":"green"}
bossbar set map:event color green
bossbar set map:event max 12000
scoreboard players set @e[type=armor_stand,name=console] bv 0

#the 12,000 max is 10 min