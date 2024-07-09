scoreboard players set #shock_grenade_cd? temp 0
execute on origin if score @s shock_grenade_cd matches 1.. run scoreboard players set #shock_grenade_cd? temp 1
execute if score #shock_grenade_cd? temp matches 1 run function entities:projectile/shock_grenade/del
execute on origin unless score @s shock_grenade_cd matches 1.. run scoreboard players set @s shock_grenade_cd 40

tag @s add cd_check