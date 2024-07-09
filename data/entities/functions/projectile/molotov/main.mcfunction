execute unless entity @s[tag=cd_check] run function entities:projectile/molotov/cd_check

execute if score #molotov_cd? temp matches 0 run function entities:projectile/molotov/active

