scoreboard players set #molotov_cd? temp 0
execute on origin if score @s molotov_cd matches 1.. run scoreboard players set #molotov_cd? temp 1
execute if score #molotov_cd? temp matches 1 run function entities:projectile/molotov/del
execute on origin unless score @s molotov_cd matches 1.. run scoreboard players set @s molotov_cd 40

tag @s add cd_check