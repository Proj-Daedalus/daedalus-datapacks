execute positioned ~ ~-1 ~ if block ~ ~ ~ #clear_d run function entities:marker/fire_area/raycast

scoreboard players add @s ai_timer 1

execute if score @s ai_timer matches 1 run function entities:marker/fire_area/spread/1
execute if score @s ai_timer matches 2 run function entities:marker/fire_area/spread/2
execute if score @s ai_timer matches 3 run function entities:marker/fire_area/spread/3

execute if score @s ai_timer matches 4 run kill @s