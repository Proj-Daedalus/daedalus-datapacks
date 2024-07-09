
execute unless entity @s[tag=has_vehicle] run function entities:item_display/molotov_on/vehicle


scoreboard players set @s bool 0
execute on vehicle on passengers run scoreboard players set @s bool 1
execute if score @s bool matches 0 run function entities:item_display/molotov_on/explode