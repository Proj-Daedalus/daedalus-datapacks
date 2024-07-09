scoreboard players set @s flare_color 3
item modify entity @s weapon.mainhand special_items:flare/red
execute if entity @s[gamemode=creative] unless score @s flare_long matches 1 run function special_items:items/flare/red
execute if entity @s[gamemode=creative] if score @s flare_long matches 1 run function special_items:items/flare/long/red