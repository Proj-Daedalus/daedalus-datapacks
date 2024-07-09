execute store result score @s Rot0 run data get entity @s Rotation[0]

execute positioned ~ ~ ~0.5 unless block ~ ~ ~ #clear_d at @s positioned ~ ~ ~-0.5 if block ~ ~ ~ #clear_d at @s run teleport @s ~ ~ ~ 0 ~
execute positioned ~ ~ ~-0.5 unless block ~ ~ ~ #clear_d at @s positioned ~ ~ ~0.5 if block ~ ~ ~ #clear_d at @s run teleport @s ~ ~ ~ 180 ~
execute positioned ~0.5 ~ ~ unless block ~ ~ ~ #clear_d at @s positioned ~-0.5 ~ ~ if block ~ ~ ~ #clear_d at @s run teleport @s ~ ~ ~ -90 ~
execute positioned ~-0.5 ~ ~ unless block ~ ~ ~ #clear_d at @s positioned ~0.5 ~ ~ if block ~ ~ ~ #clear_d at @s run teleport @s ~ ~ ~ 90 ~
