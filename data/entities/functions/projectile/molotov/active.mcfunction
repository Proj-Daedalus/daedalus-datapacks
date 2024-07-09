particle smoke ~ ~ ~ 0 0 0 0 1 force
particle flame ~ ~ ~ 0 0 0 0.1 5 force

tag @s add molotov
execute unless entity @s[tag=has_passenger] run function entities:projectile/molotov/passenger

data merge entity @s {HasVisualFire:1b}