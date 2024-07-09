scoreboard players set #flashbang_cd? temp 0
execute on origin if score @s flashbang_cd matches 1.. run scoreboard players set #flashbang_cd? temp 1
execute if score #flashbang_cd? temp matches 1 run function entities:projectile/flashbang/del
execute on origin unless score @s flashbang_cd matches 1.. run scoreboard players set @s flashbang_cd 40

tag @s add cd_check