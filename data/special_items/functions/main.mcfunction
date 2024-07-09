#kill @e[type=marker]
execute as @a at @s run function players:main

execute as @e[type=marker] at @s run function entities:marker_tick
execute as @e[type=item_display] at @s run function entities:item_display_tick
execute as @e[type=block_display] at @s run function entities:block_display_tick
execute as @e[tag=target] at @s run function entities:target_tick
execute as @e[type=#mobs:projectile] at @s run function entities:projectile_tick
execute as @e[type=#arrows] run function entities:arrows/tick

scoreboard players add #5tick temp 1
execute if score #5tick temp matches 6 run scoreboard players set #5tick temp 1

scoreboard players add #4tick temp 1
execute if score #4tick temp matches 5 run scoreboard players set #4tick temp 1

execute as @e[type=!#mobs:non_alive] unless score @s fuck_you_immune matches -2147483648..2147483647 run scoreboard players set @s fuck_you_immune 0
execute as @e[type=!#mobs:non_alive] unless score @s elec_dmgcd matches -2147483648..2147483647 run scoreboard players set @s elec_dmgcd 0
execute as @e[type=!#mobs:non_alive] unless score @s minimum_weaponry_hurt_level matches -2147483648..2147483647 run scoreboard players set @s minimum_weaponry_hurt_level 0
scoreboard players remove @e[scores={fuck_you_immune=1..}] fuck_you_immune 1

execute as @e[tag=!uuid] run function special_items:uuid
