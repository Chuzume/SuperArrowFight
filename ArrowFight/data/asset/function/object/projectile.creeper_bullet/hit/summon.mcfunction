#> asset:object/projectile.creeper_bullet/hit/summon
#
# 
#
# @within function asset:object/projectile.creeper_bullet/hit/

# 自身のフィールドをゾンビに受け渡す
    data modify storage api: Argument.FieldOverride.Team set from storage asset:context this.Team

# 召喚
    function api:mob/summon.m {ID:enemy.horde_creeper}
