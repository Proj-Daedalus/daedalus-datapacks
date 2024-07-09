scoreboard players add @s ai_timer 1

execute if score @s ai_timer matches 100.. run function entities:item_display/elec_ground/break

execute unless entity @s[tag=elec_on] unless block ~ ~ ~ #clear_d run function entities:item_display/elec_ground/tp_up_loop
execute if entity @s[tag=wall] run function entities:item_display/elec_ground/wall
execute at @s[tag=!wall,tag=!elec_on,tag=!ceiling] if block ~ ~-0.1 ~ #clear_d align y run teleport @s ~ ~-1 ~

#execute rotated ~ 0 if entity @s[tag=ceiling] if block ~ ~0.25 ~ #clear_d run function entities:item_display/elec_ground/ceiling_loop

scoreboard players set @s num 0

execute unless score @s num matches 3.. positioned ~ ~ ~ rotated ~ 0 run function entities:item_display/elec_ground/recursion

execute unless score #5tick temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 2

execute if entity @s[tag=elec_on] positioned ~ ~-1 ~ positioned as @e[tag=!electrocution_immune,tag=!carried_weaponry_immune,distance=..2,type=!#mobs:non_alive,limit=1,sort=nearest] positioned ~ ~1 ~ run teleport @s ~ ~ ~
#execute if entity @s[tag=elec_on] run teleport @s ~ ~1 ~

execute if entity @s[tag=elec_on] unless entity @e[tag=!electrocution_immune,tag=!carried_weaponry_immune,distance=..2,type=!#mobs:non_alive,limit=1,sort=nearest] run function entities:item_display/elec_ground/break
particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 10 force

execute unless score @s weapon_level matches 10.. run function entities:item_display/elec_ground/damage/weak
execute if score @s weapon_level matches 10.. run function entities:item_display/elec_ground/damage/strong

execute if entity @s[tag=elec_on] run function particles:lightning_line_rand {len:"3",range:"1"}

execute as @s[tag=ceiling] if block ~ ~0.5 ~ #clear_d run tag @s remove ceiling
execute store result score @s Posy run data get entity @s Pos[1] 10
scoreboard players operation @s Posy %= #10 const
execute unless score @s[tag=!wall,tag=!elec_on,tag=!ceiling] Posy matches 0 align y run teleport @s ~ ~-1 ~