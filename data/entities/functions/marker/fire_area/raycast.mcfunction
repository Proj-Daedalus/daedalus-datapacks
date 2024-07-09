teleport @s ~ ~ ~
scoreboard players add @s num 1
execute if score @s num matches 3 run kill @s

execute positioned ~ ~-1 ~ if block ~ ~ ~ #clear_d run function entities:marker/fire_area/raycast
