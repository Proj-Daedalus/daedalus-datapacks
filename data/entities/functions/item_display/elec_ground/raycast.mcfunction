particle electric_spark
execute unless score @s weapon_level matches 10.. positioned ^ ^ ^0.2 if entity @s[distance=..2] run function entities:item_display/elec_ground/raycast
execute if score @s weapon_level matches 10.. positioned ^ ^ ^0.2 if entity @s[distance=..3] run function entities:item_display/elec_ground/raycast