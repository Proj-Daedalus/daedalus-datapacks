summon marker ~ ~ ~ {Tags:["flare_shot","flare_long"]}

execute store result entity @e[tag=flare_shot,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=flare_shot,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]
execute store result score @e[tag=flare_shot,limit=1,sort=nearest] Rot1 run data get entity @s Rotation[1]
scoreboard players set @e[tag=flare_shot,limit=1,sort=nearest] weapon_level 3
scoreboard players operation @e[tag=flare_shot,limit=1,sort=nearest] flare_color = @s flare_color