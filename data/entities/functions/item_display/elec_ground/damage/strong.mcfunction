execute if entity @s[tag=elec_on] as @e[tag=!electrocution_immune,tag=!carried_weaponry_immune,distance=..3,type=!#mobs:non_alive,limit=1,sort=nearest,scores={minimum_weaponry_hurt_level=..10,fuck_you_immune=0,elec_dmgcd=0}] run function entities:item_display/elec_ground/damage/on_3
execute unless entity @s[tag=elec_on] as @e[tag=!electrocuted,tag=!electrocution_immune,tag=!carried_weaponry_immune,distance=..3,type=!#mobs:non_alive,scores={minimum_weaponry_hurt_level=..10,fuck_you_immune=0,elec_dmgcd=0}] run function entities:item_display/elec_ground/damage/2

data merge entity @s {Glowing:1b}
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 10 force
