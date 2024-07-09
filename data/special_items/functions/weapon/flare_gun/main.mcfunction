execute unless score @s flare_color matches -2147483648..2147483647 run scoreboard players set @s flare_color 1
execute unless score @s flare_ammo matches -2147483648..2147483647 run scoreboard players set @s flare_ammo 0


execute if score @s flare_cd matches 1.. run function special_items:weapon/flare_gun/actionbars/reload
execute if score @s flare_cd matches 1 run playsound minecraft:block.iron_door.open player @s ~ ~ ~ 1 1.5
execute unless score @s flare_cd matches 1.. run function special_items:weapon/flare_gun/actionbars/active

execute if predicate players:holding/ranged/flare_gun store result score @s flare_ammo run data get entity @s SelectedItem.tag.ammo
execute unless predicate players:holding/ranged/flare_gun if predicate players:holding/flare_off store result score @s flare_ammo run data get entity @s Inventory[{Slot:-106b}].tag.ammo

execute store result score @s flare_ammo_total run clear @s candle{flare:1b} 0
execute if score @s flare_ammo matches 0 if score @s flare_ammo_total matches 1.. run function special_items:weapon/flare_gun/fill/0
execute if score @s flare_ammo matches 0 if score @s flare_ammo_total matches 0 unless entity @s[tag=flare_noammo] run function special_items:weapon/flare_gun/noammo
execute if score @s flare_ammo matches 0 if entity @s[gamemode=creative] run scoreboard players set @s flare_ammo 1