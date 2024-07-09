scoreboard players remove @s flare_ammo 1
scoreboard players set @s flare_cd 60

execute store result storage maze_run:scores "ammo_fill" byte 1 run scoreboard players get @s flare_ammo
execute if predicate players:holding/ranged/flare_gun run item modify entity @s weapon.mainhand special_items:ammo
execute unless predicate players:holding/ranged/flare_gun if predicate players:holding/ranged/offhand/flare_gun run item modify entity @s weapon.offhand special_items:ammo

playsound entity.firework_rocket.launch player @s ~ ~ ~ 1 1
playsound custom.firework_custom player @s ~ ~ ~ 1 1

execute anchored eyes positioned ^ ^ ^0.1 if score @s flare_long matches 0 run function special_items:weapon/flare_gun/use/1
execute anchored eyes positioned ^ ^ ^0.1 if score @s flare_long matches 1 run function special_items:weapon/flare_gun/use/2