execute unless entity @s[gamemode=creative] run scoreboard players remove @s elec_gun_ammo 1
execute if entity @s[gamemode=creative] run scoreboard players set @s elec_gun_ammo 16

scoreboard players set @s elec_gun_cd 40
scoreboard players set @s elec_gun_charge 0

execute store result storage maze_run:scores "ammo_fill" byte 1 run scoreboard players get @s elec_gun_ammo
execute if predicate players:holding/ranged/elec_gun run item modify entity @s weapon.mainhand special_items:ammo
execute unless predicate players:holding/ranged/elec_gun if predicate players:holding/ranged/offhand/elec_gun run item modify entity @s weapon.offhand special_items:ammo

execute anchored eyes positioned ^ ^ ^0.6 run function special_items:weapon/elec_gun/use/1