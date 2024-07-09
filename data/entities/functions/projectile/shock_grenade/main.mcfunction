execute unless entity @s[tag=cd_check] run function entities:projectile/shock_grenade/cd_check

execute if score #shock_grenade_cd? temp matches 0 run function entities:projectile/shock_grenade/active

