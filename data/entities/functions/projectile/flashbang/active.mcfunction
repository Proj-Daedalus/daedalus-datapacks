particle instant_effect ~ ~ ~ 0 0 0 0 1 force

tag @s add flashbang
execute unless entity @s[tag=has_passenger] run function entities:projectile/flashbang/passenger