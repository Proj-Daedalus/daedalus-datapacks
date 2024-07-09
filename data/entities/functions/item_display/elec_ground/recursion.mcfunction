scoreboard players add @s num 1

execute unless entity @s[tag=wall] unless entity @s[tag=elec_on] store result score @s rng run random value 0..359
execute unless entity @s[tag=wall] unless entity @s[tag=elec_on] unless entity @s[tag=ceiling] store result score @s rng2 run random value -15..-5
execute unless entity @s[tag=wall] unless entity @s[tag=elec_on] if entity @s[tag=ceiling] store result score @s rng2 run random value 5..15

execute if entity @s[tag=wall] store result score @s rng2 run random value 0..359

execute store result storage maze_run:entities elec_ground.rot0 float 1 run scoreboard players get @s rng
execute store result storage maze_run:entities elec_ground.rot1 float 1 run scoreboard players get @s rng2
execute rotated ~90 ~ run function entities:item_display/elec_ground/sparks with storage maze_run:entities elec_ground

execute unless score @s num matches 3.. run function entities:item_display/elec_ground/recursion