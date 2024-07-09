scoreboard players operation #elec_fill temp = @s elec_ammo_total
execute if score #elec_fill temp > #16 const run scoreboard players set #elec_fill temp 16

execute store result storage maze_run:scores ammo.elec_fill byte 1 run scoreboard players get #elec_fill temp

function special_items:weapon/elec_gun/fill/1 with storage maze_run:scores ammo