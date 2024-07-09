scoreboard players set #smoke_bomb_cd? temp 0
execute on origin if score @s smoke_bomb_cd matches 1.. run scoreboard players set #smoke_bomb_cd? temp 1
execute if score #smoke_bomb_cd? temp matches 1 run function entities:projectile/smoke_bomb/del
execute on origin unless score @s smoke_bomb_cd matches 1.. run scoreboard players set @s smoke_bomb_cd 40

tag @s add cd_check