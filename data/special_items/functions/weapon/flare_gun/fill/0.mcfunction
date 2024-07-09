scoreboard players operation #flare_fill temp = @s flare_ammo_total
execute if score #flare_fill temp > #1 const run scoreboard players set #flare_fill temp 1
tag @s remove flare_noammo

execute store result storage maze_run:scores ammo.flare_fill byte 1 run scoreboard players get #flare_fill temp

function special_items:weapon/flare_gun/fill/1 with storage maze_run:scores ammo