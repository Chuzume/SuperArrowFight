#> asset:object/system.map_generate_button/tick/interacted.m
#
# 
#
# @within function asset:object/system.map_generate_button/tick/

# サウンド
    playsound minecraft:block.amethyst_block.break block @a ~ ~ ~ 1 1.5

# 自分の持ってるフィールドをワールド側に渡し、マップを生成する
    data modify storage world_manager: GenerateMap.MapID set from storage asset:context this.MapID
    data modify storage world_manager: GenerateMap.Active set value true

# 連続で押すと重いので、クールタイムかける
    scoreboard players set @s system.map_generate_button.CoolTime 20
