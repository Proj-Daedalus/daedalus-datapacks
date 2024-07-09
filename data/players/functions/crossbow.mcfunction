
execute if predicate players:holding/ranged/elec_gun unless score @s elec_gun_cd matches 1.. run function special_items:weapon/elec_gun/fire
execute if predicate players:holding/ranged/offhand/elec_gun unless predicate players:holding/data/crossbow_main unless score @s elec_gun_cd matches 1.. run function special_items:weapon/elec_gun/fire

execute if predicate players:holding/ranged/flare_gun unless score @s flare_cd matches 1.. run function special_items:weapon/flare_gun/fire
execute if predicate players:holding/ranged/offhand/flare_gun unless predicate players:holding/data/crossbow_main unless score @s flare_cd matches 1.. run function special_items:weapon/flare_gun/fire

scoreboard players reset @s crossbow_use