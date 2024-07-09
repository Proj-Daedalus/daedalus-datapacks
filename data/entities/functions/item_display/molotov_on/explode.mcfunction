execute unless block ~ ~ ~ #clear_d align y run teleport @s ~ ~0.5 ~

kill @s
particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100 force
function particles:ring {"id":flame}

playsound block.fire.extinguish player @a ~ ~ ~ 2 1
playsound entity.generic.explode player @a ~ ~ ~ 2 2
playsound entity.blaze.shoot player @a ~ ~ ~ 2 0

scoreboard players set #weapon_level temp 3

execute as @e[type=!#mobs:non_alive,tag=!carried_weaponry_immune,distance=..3] if score @s minimum_weaponry_hurt_level <= #weapon_level temp run function entities:item_display/molotov_on/damage

execute positioned ~ ~ ~ align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["fire_area_anchor"]}