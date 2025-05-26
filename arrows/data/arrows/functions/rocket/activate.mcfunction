scoreboard players set @s rocketArrow 0
summon firework_rocket ~ ~0.5 ~ {LifeTime:30,Tags:["rocketArrow","mapMob"]}
ride @s mount @e[type=firework_rocket,tag=rocketArrow,sort=nearest,limit=1,distance=..1]