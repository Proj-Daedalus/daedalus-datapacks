teleport @s ~ ~ ~
scoreboard players add @s num 1
execute if score @s num matches 2 run kill @s
execute unless block ~ ~ ~ #clear_d positioned ~ ~0.5 ~ if block ~ ~ ~ #clear_d run function entities:marker/fire_area/raycast2
