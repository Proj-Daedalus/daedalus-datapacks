scoreboard players add @s temp 1
execute if score @s[tag=!rand,tag=!fixed] temp matches 1 store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute if score @s[tag=!rand,tag=!fixed] temp matches 1 store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]
execute if score @s[tag=rand,tag=!fixed] temp matches 1 run function entities:marker/lightning_line/rand

execute if score @s temp matches 2 run function entities:marker/lightning_line/bolt0
execute if score @s temp matches 3 rotated as @s run function entities:marker/lightning_line/bolt1

execute if score @s num matches 3.. run kill @s