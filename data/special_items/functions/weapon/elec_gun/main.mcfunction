execute unless score @s elec_gun_ammo matches -2147483648..2147483647 run scoreboard players set @s elec_gun_ammo 0

execute if score @s elec_gun_cd matches 1.. run function special_items:weapon/elec_gun/actionbars/reload
execute if score @s elec_gun_cd matches 1 run playsound minecraft:block.iron_door.open player @s ~ ~ ~ 1 1.5
execute unless score @s elec_gun_cd matches 1.. unless score @s elec_gun_charge matches 1.. run function special_items:weapon/elec_gun/actionbars/active

execute if predicate players:holding/ranged/elec_gun store result score @s elec_gun_ammo run data get entity @s SelectedItem.tag.ammo
execute unless predicate players:holding/ranged/elec_gun if predicate players:holding/ranged/offhand/elec_gun store result score @s elec_gun_ammo run data get entity @s Inventory[{Slot:-106b}].tag.ammo

execute store result score @s elec_ammo_total run clear @s candle{elec_ammo:1b} 0
execute if score @s elec_gun_ammo matches 0 if score @s elec_ammo_total matches 1.. run function special_items:weapon/elec_gun/fill/0
execute if score @s elec_gun_ammo matches 0 if entity @s[gamemode=creative] run scoreboard players set @s elec_gun_ammo 16

execute unless score @s elec_gun_charge matches -2147483648..2147483647 run scoreboard players set @s elec_gun_charge 0
execute if predicate players:movement/sneaking unless score @s elec_gun_cd matches 1.. run scoreboard players add @s[scores={elec_gun_charge=..59}] elec_gun_charge 1
execute if score @s elec_gun_charge matches 1.. run function special_items:weapon/elec_gun/actionbars/charge

execute if entity @s[tag=elec_gun_ping] unless score @s elec_gun_charge matches 60 run tag @s remove elec_gun_ping