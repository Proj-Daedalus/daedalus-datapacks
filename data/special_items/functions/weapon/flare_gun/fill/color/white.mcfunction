scoreboard players set @s flare_color 4
item modify entity @s weapon.mainhand special_items:flare/white
execute if entity @s[gamemode=creative] unless score @s flare_long matches 1 run function special_items:items/flare/white
execute if entity @s[gamemode=creative] if score @s flare_long matches 1 run function special_items:items/flare/long/white