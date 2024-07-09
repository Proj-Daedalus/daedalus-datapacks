execute unless entity @s[tag=cd_check] run function entities:projectile/flashbang/cd_check

execute if score #flashbang_cd? temp matches 0 run function entities:projectile/flashbang/active

