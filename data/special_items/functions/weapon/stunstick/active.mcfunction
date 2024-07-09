execute unless score #5tick temp matches 5 run playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 2
execute positioned ~ ~1.5 ~ positioned ^-0.65 ^ ^0.5 run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.1 5 force
execute positioned ~ ~1.5 ~ positioned ^-0.65 ^ ^0.5 run particle minecraft:dust 0 0.75 1 0.75 ~ ~ ~ 0 0 0 0.1 5 force

execute if score @s stunstick_charge matches 0 run scoreboard players set @s stunstick_active 0
scoreboard players set @s stunstick_regen -20