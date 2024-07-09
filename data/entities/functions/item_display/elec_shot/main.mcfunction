execute store result score @s Rot1 run data get entity @e[tag=elec_display,limit=1,sort=nearest] Rotation[1]
scoreboard players add @s ai_timer 1

execute if score @s ai_timer matches 50.. run function entities:item_display/elec_shot/del
execute unless entity @a[distance=..100] run function entities:item_display/elec_shot/del

#execute store success score @s temp if score @s ai_timer matches 1 if score @s Rot1 matches 60..90

execute positioned ^ ^ ^0.1 run function entities:item_display/elec_shot/raycast

particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 10 force

scoreboard players operation @s temp = #39 const
execute if score @s Rot1 matches -1..90 run scoreboard players operation @s temp += @s ai_timer
execute if score @s Rot1 matches ..0 run scoreboard players operation @s temp -= @s ai_timer
execute if score @s temp matches 31.. run scoreboard players set @s temp 30
#execute if score @s Rot1 matches 80.. run scoreboard players set @s temp 25

execute store result storage maze_run:entities elec_shot.velocity float 0.1 run scoreboard players get @s temp
execute store result storage maze_run:entities elec_shot.drop float 0.5 run scoreboard players get @s ai_timer

function entities:item_display/elec_shot/velocity with storage maze_run:entities elec_shot

execute store result entity @e[tag=elec_display,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=elec_display,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]