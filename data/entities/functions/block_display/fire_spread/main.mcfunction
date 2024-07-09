execute as @e[type=!#mobs:non_alive,distance=..1,scores={minimum_weaponry_hurt_level=..3}] run damage @s 1 in_fire
execute as @e[type=!#mobs:non_alive,distance=..1,scores={minimum_weaponry_hurt_level=..3}] run data merge entity @s {Fire:60s}

execute unless score @s ai_timer matches -2147483648..2147483647 store result score @s ai_timer run random value 0..20

scoreboard players add @s ai_timer 1
execute if score @s ai_timer matches 100.. run kill @s

execute rotated 0 -90 run particle smoke ~ ~ ~ ^ ^ ^6666666666 0.00000000001 0
execute positioned ~ ~-1 ~ if block ~ ~ ~ #clear_d run function entities:marker/fire_area/raycast
