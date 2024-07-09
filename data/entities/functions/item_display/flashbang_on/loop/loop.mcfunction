scoreboard players remove #loop temp 1
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] store success score #done? temp run function entities:item_display/flashbang_on/loop/effect
execute if score #loop temp matches 1.. unless score #done? temp matches 1 positioned ^ ^ ^1 if block ~ ~ ~ #clear_d run function entities:item_display/flashbang_on/loop/loop