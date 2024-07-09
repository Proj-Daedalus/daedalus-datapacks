execute store result score @s rng run random value 0..359
execute store result score @s rng2 run random value -90..90

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s rng
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s rng2