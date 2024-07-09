teleport @s ~ ~ ~
scoreboard players add @s num 1

execute store result score #lightning rng run random value -30..30
execute store result score #lightning rng2 run random value -30..30

execute store result storage maze_run:entities lightning.rot0 float 1 run scoreboard players get #lightning rng
execute store result storage maze_run:entities lightning.rot1 float 1 run scoreboard players get #lightning rng2
function entities:marker/lightning_line/rot with storage maze_run:entities lightning

execute if score @s temp matches 3 rotated as @s run function entities:marker/lightning_line/bolt1
