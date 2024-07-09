
execute unless score @s weapon_level matches 10.. positioned ~ ~-1 ~ if entity @e[tag=!electrocuted,tag=!electrocution_immune,tag=!carried_weaponry_immune,distance=..0.75,type=!#mobs:non_alive,scores={minimum_weaponry_hurt_level=..5,fuck_you_immune=0,elec_dmgcd=0}] positioned ~ ~1 ~ run function entities:item_display/elec_shot/land/entity
execute if score @s weapon_level matches 10.. positioned ~ ~-1 ~ if entity @e[tag=!electrocuted,tag=!electrocution_immune,tag=!carried_weaponry_immune,distance=..0.75,type=!#mobs:non_alive,scores={minimum_weaponry_hurt_level=..10,fuck_you_immune=0,elec_dmgcd=0}] positioned ~ ~1 ~ run function entities:item_display/elec_shot/land/entity

execute positioned ~ ~-1 ~ unless entity @e[tag=!electrocution_immune,tag=!carried_weaponry_immune,distance=..0.75,type=!#mobs:non_alive] positioned ~ ~1 ~ positioned ^ ^ ^0.25 unless block ~ ~ ~ #clear_d run function entities:item_display/elec_shot/land

execute positioned ~ ~-1 ~ unless entity @e[tag=!electrocution_immune,tag=!carried_weaponry_immune,distance=..0.75,type=!#mobs:non_alive] positioned ~ ~1 ~ positioned ^ ^ ^0.25 if block ~ ~ ~ #clear_d if entity @s[distance=..2.75] run function entities:item_display/elec_shot/raycast
