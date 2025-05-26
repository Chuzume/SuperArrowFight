#> asset:mob/prototype_wood_doll/tick/model/animation/move/neutral
#
# 
#
# @within function asset:mob/prototype_wood_doll/tick/model/animation/move/forward

tag @s add AJModel.NowNeutral
tag @s remove AJModel.NowWalk
function animated_java:wood_doll_test/animations/neutral/tween {duration:5, to_frame: 0}
