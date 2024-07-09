particle large_smoke ~ ~ ~ 0 0 0 0 1 force

tag @s add smoke_bomb
execute unless entity @s[tag=has_passenger] run function entities:projectile/smoke_bomb/passenger