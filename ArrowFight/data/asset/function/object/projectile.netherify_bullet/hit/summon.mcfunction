#> asset:object/projectile.netherify_bullet/hit/summon
#
# ブレイズだ！
#
# @within function asset:object/projectile.netherify_bullet/hit/convert

# 自身のフィールドを受け渡す
    data modify storage api: Argument.FieldOverride.Team set from storage asset:context this.Team

# 召喚
    function api:mob/summon.m {ID:enemy.horde_blaze}
