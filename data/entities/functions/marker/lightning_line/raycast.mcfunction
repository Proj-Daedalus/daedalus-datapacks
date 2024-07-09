particle electric_spark

$execute positioned ^ ^ ^0.1 if entity @s[distance=..$(range)] run function entities:marker/lightning_line/raycast with storage maze_run:entities lightning
$execute positioned ^ ^ ^0.1 unless entity @s[distance=..$(range)] run function entities:marker/lightning_line/bolt0 with storage maze_run:entities lightning
