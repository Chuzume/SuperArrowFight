#> asset:mob/prototype_wood_doll/tick/model/animation/move/forward
#
# 
#
# @within function asset:mob/prototype_wood_doll/tick/

tag @s add AJModel.NowWalk
tag @s remove AJModel.NowNeutral
function animated_java:wood_doll_test/animations/sprint_fast/tween {duration:3, to_frame: 0}
