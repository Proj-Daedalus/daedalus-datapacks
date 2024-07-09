execute if score @s flare_ammo_total matches 0 run item modify entity @s weapon.mainhand special_items:flare/empty

execute if score @s flare_color matches 1 run item modify entity @s weapon.mainhand special_items:flare/blue
execute if score @s flare_color matches 2 run item modify entity @s weapon.mainhand special_items:flare/green
execute if score @s flare_color matches 3 run item modify entity @s weapon.mainhand special_items:flare/red
execute if score @s flare_color matches 3 run item modify entity @s weapon.mainhand special_items:flare/white