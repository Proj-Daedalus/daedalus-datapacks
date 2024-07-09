scoreboard players remove @s[scores={stunstick_active=1..,stunstick_charge=1..}] stunstick_active 1
scoreboard players remove @s[scores={stunstick_active=1..,stunstick_charge=1..}] stunstick_charge 1

execute if score @s stunstick_active matches 1.. run function special_items:weapon/stunstick/active

function special_items:weapon/stunstick/actionbars/0