scoreboard players set @s flare_color 2
item modify entity @s weapon.mainhand special_items:flare/green
execute if entity @s[gamemode=creative] unless score @s flare_long matches 1 run function special_items:items/flare/green
execute if entity @s[gamemode=creative] if score @s flare_long matches 1 run function special_items:items/flare/long/green