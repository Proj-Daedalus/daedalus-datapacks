$clear @s candle{elec_ammo:1b} $(elec_fill)

$scoreboard players set @s elec_gun_ammo $(elec_fill)

$data modify storage maze_run:scores "ammo_fill" set value $(elec_fill)
execute if predicate players:holding/ranged/elec_gun run item modify entity @s weapon.mainhand special_items:ammo
execute unless predicate players:holding/ranged/elec_gun if predicate players:holding/ranged/offhand/elec_gun run item modify entity @s weapon.offhand special_items:ammo
playsound block.respawn_anchor.charge player @s ~ ~ ~

execute rotated ~ 0 positioned ~ ~0.5 ~ run function particles:ring_small {id:"large_smoke"}