execute unless score @s ai_timer matches -2147483648..2147483647 store result score @s ai_timer run random value 0..13
scoreboard players add @s ai_timer 1
teleport @s ^ ^ ^2
execute if score @s ai_timer matches 50.. run function entities:marker/flare_shot/explode