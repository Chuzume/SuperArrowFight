#waterlogged blocks
fill 530 100 534 506 126 580 air replace water
fill 530 100 534 506 126 580 air replace lava
fill 530 100 534 506 126 580 air replace #map:waterlogged[waterlogged=true]

fill 494 100 534 470 126 580 air replace water
fill 494 100 534 470 126 580 air replace lava
fill 494 100 534 470 126 580 air replace #map:waterlogged[waterlogged=true]

#reset buttons
execute if block 494 144 505 minecraft:birch_button run setblock 494 144 505 minecraft:birch_button[powered=false]
execute if block 494 144 505 minecraft:birch_button run setblock 498 144 505 minecraft:birch_button[powered=false]
execute if block 494 144 505 minecraft:birch_button run setblock 506 144 505 minecraft:birch_button[powered=false]
execute if block 494 144 505 minecraft:birch_button run setblock 502 144 505 minecraft:birch_button[powered=false]
execute if block 494 144 505 minecraft:birch_button run setblock 496 144 505 minecraft:birch_button[powered=false]
execute if block 494 144 505 minecraft:birch_button run setblock 504 144 505 minecraft:birch_button[powered=false]