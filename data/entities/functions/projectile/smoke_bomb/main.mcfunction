execute unless entity @s[tag=cd_check] run function entities:projectile/smoke_bomb/cd_check

execute if score #smoke_bomb_cd? temp matches 0 run function entities:projectile/smoke_bomb/active

