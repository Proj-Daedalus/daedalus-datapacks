tag @s add target
execute if score @s stunned matches 20.. run effect give @s slowness 1 100 true
execute if score @s stunned matches 20.. run effect give @s weakness 1 100 true

particle electric_spark ~ ~1 ~ 0 0 0 1 10 force
execute unless score #5tick temp matches 5 run playsound entity.firework_rocket.blast hostile @a ~ ~ ~ 1 2
execute if score @s stunned matches 1 run tag @s remove target
scoreboard players remove @s stunned 1