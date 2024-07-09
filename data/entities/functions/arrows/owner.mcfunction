data modify storage maze_run:entities tempUuid set from entity @s Owner
execute store result score @s uuid0 store result score #temp uuid0 run data get storage maze_run:entities tempUuid[0]
execute store result score @s uuid1 store result score #temp uuid1 run data get storage maze_run:entities tempUuid[1]
execute store result score @s uuid2 store result score #temp uuid2 run data get storage maze_run:entities tempUuid[2]
execute store result score @s uuid3 store result score #temp uuid3 run data get storage maze_run:entities tempUuid[3]

tag @s add owner_tagged

scoreboard players reset #elec_gun? temp


execute as @e if score @s uuid0 = #temp uuid0 if score @s uuid1 = #temp uuid1 if score @s uuid2 = #temp uuid2 if score @s uuid3 = #temp uuid3 run function entities:arrows/data

execute if score #elec_gun? temp matches 1 run function entities:arrows/special/elec_gun


