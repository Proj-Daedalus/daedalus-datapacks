execute unless score @s flare_ammo matches -2147483648..2147483647 run scoreboard players set @s flare_ammo 0
execute unless score @s flare_long matches -2147483648..2147483647 run scoreboard players set @s flare_long 0

execute if score @s flare_long matches 0 run function special_items:weapon/flare_gun/actionbars/active/normal
execute if score @s flare_long matches 1 run function special_items:weapon/flare_gun/actionbars/active/long