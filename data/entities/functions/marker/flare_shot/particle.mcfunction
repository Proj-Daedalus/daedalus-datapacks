execute if score @s flare_color matches 1 run particle minecraft:dust_color_transition 0 0 1 10 0 1 1 ~ ~ ~ 0 0 0 0 5 force
execute if score @s flare_color matches 2 run particle minecraft:dust_color_transition 0 1 0 10 0 0.5 0 ~ ~ ~ 0 0 0 0 5 force
execute if score @s flare_color matches 3 run particle minecraft:dust_color_transition 1 0 0 10 0.5 0 0 ~ ~ ~ 0 0 0 0 5 force
execute if score @s flare_color matches 4 run particle minecraft:dust_color_transition 1 1 1 10 0.5 0.5 0.5 ~ ~ ~ 0 0 0 0 5 force

particle firework ~ ~ ~ 0 0 0 0.01 10 force
particle flash ~ ~ ~ 0 0 0 0 1 force
execute unless block ~ ~ ~ #clear_d run function entities:marker/flare_shot/explode
