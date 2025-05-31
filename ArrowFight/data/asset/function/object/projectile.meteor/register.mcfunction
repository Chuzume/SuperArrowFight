#> asset:object/projectile.meteor/register
#
# Objectのデータを指定
#
# @within function asset_manager:object/summon/register.m

# 継承(オプション)
    data modify storage asset:object Extends append value "abstract.gravity_projectile_3d"
    function asset:object/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# ID (int)
    data modify storage asset:object ID set value "projectile.meteor"
# フィールド: 
    # transformation
        data modify storage asset:object Field.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0f],scale:[1f,1f,1f]}
    # item
        data modify storage asset:object Field.Item set value {id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;420496346,704925621,-2097778403,1450691027],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjdkNTdiNWJjOWFiM2Y1M2VjOWNjMmY5NGI3MmMxMzRhY2RlODU1YTY0M2MyNWU1YTI2YzNlMGIyYTYwM2FkZCJ9fX0="}]}}}
    # item_display
        data modify storage asset:object Field.ItemDisplay set value "fixed"
    # 速度
        data modify storage asset:object Field.Speed set value 0.5
