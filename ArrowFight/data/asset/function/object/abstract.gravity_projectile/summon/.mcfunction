#> asset:object/abstract.gravity_projectile/summon/
#
# Object召喚処理の呼び出し時の処理のエイリアス
#
# @within asset:object/_alias/abstract.gravity_projectile/summon

summon ender_pearl ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:item_model":"minecraft:air"}},Tags:["abstract.gravity_projectile.Projectile"],Passengers:[{id:"marker",Tags:["ObjectInit"]}]}
