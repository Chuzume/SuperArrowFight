#> asset:object/projectile.zombie_bullet/hit/summon
#
# 
#
# @within function asset:object/projectile.zombie_bullet/hit/

# 自身のフィールドをゾンビに受け渡す
    data modify storage api: Argument.FieldOverride.Team set from storage asset:context this.Team

# ゾンビ召喚
    function api:mob/summon.m {ID:enemy.horde_zombie}

