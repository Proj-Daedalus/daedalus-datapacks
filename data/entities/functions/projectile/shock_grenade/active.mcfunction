particle electric_spark ~ ~ ~ 0 0 0 0 1 force

tag @s add shock_grenade
execute unless entity @s[tag=has_passenger] run function entities:projectile/shock_grenade/passenger