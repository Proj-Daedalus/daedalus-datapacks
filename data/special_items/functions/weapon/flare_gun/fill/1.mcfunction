execute store result score #flare_blue temp run clear @s candle{flare:1b,color:1b} 0
execute store result score #flare_green temp run clear @s candle{flare:1b,color:2b} 0
execute store result score #flare_red temp run clear @s candle{flare:1b,color:3b} 0
execute store result score #flare_white temp run clear @s candle{flare:1b,color:4b} 0

execute store result score #flare_long temp run clear @s candle{flare:1b,longflare:1b} 0

$clear @s candle{flare:1b} $(flare_fill)

execute store result score #flare_blue2 temp run clear @s candle{flare:1b,color:1b} 0
execute store result score #flare_green2 temp run clear @s candle{flare:1b,color:2b} 0
execute store result score #flare_red2 temp run clear @s candle{flare:1b,color:3b} 0
execute store result score #flare_white2 temp run clear @s candle{flare:1b,color:4b} 0

execute store result score #flare_long2 temp run clear @s candle{flare:1b,longflare:1b} 0

execute store result score @s flare_long if score #flare_long temp > #flare_long2 temp

execute if score #flare_blue temp > #flare_blue2 temp run function special_items:weapon/flare_gun/fill/color/blue
execute if score #flare_green temp > #flare_green2 temp run function special_items:weapon/flare_gun/fill/color/green
execute if score #flare_red temp > #flare_red2 temp run function special_items:weapon/flare_gun/fill/color/red
execute if score #flare_white temp > #flare_white2 temp run function special_items:weapon/flare_gun/fill/color/white

$scoreboard players set @s flare_ammo $(flare_fill)

$data modify storage maze_run:scores "ammo_fill" set value $(flare_fill)
execute if predicate players:holding/ranged/flare_gun run item modify entity @s weapon.mainhand special_items:ammo
execute unless predicate players:holding/ranged/flare_gun if predicate players:holding/ranged/offhand/flare_gun run item modify entity @s weapon.offhand special_items:ammo
playsound block.iron_door.close player @s ~ ~ ~ 1 2

execute rotated ~ 0 positioned ~ ~0.5 ~ run function particles:ring_small {id:"large_smoke"}