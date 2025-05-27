#> asset:object/abstract.gravity_projectile/init/fixed_motion
#
# フィールドに与えられた数値を使って飛んでいく
#
# @within function asset:object/abstract.gravity_projectile/init/

data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.Speed
function lib:motion/
