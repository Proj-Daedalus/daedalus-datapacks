execute unless score @s num >= @s lightning_len store result storage maze_run:entities lightning.range int 1 run scoreboard players get @s lightning_range

execute unless score @s num >= @s lightning_len positioned ^ ^ ^0.1 run function entities:marker/lightning_line/raycast with storage maze_run:entities lightning
execute if score @s num >= @s lightning_len run kill
