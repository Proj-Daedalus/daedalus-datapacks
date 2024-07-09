
scoreboard players set @s flare_color 1
item modify entity @s weapon.mainhand special_items:flare/blue
execute if entity @s[gamemode=creative] unless score @s flare_long matches 1 run function special_items:items/flare/blue
execute if entity @s[gamemode=creative] if score @s flare_long matches 1 run function special_items:items/flare/long/blue