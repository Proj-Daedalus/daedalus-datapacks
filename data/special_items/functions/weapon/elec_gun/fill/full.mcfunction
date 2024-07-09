execute store result storage maze_run:scores "ammo_fill" byte 1 run scoreboard players get #16 const
execute if predicate players:holding/ranged/elec_gun run item modify entity @s weapon.mainhand special_items:ammo
execute unless predicate players:holding/ranged/elec_gun if predicate players:holding/ranged/offhand/elec_gun run item modify entity @s weapon.offhand special_items:ammo