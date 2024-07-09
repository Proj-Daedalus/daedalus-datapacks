advancement revoke @s only special_items:melee_attack

execute if predicate players:holding/stun_stick if score @s stunstick_active matches 1.. run function special_items:weapon/stunstick/onhit/asplayer