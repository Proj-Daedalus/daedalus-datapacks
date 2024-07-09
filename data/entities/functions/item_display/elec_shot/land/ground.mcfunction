execute if score @s Rot1 matches 0.. positioned ~ ~1 ~ align y run summon item_display ~ ~ ~ {Rotation:[0F,90F],Tags:["elec_ground"],item:{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:12300}}}
execute if score @s Rot1 matches ..-1 align y positioned ~ ~-0.05 ~ run summon item_display ~ ~ ~ {Rotation:[0F,90F],Tags:["elec_ground","ceiling"],item:{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:12300}}}
#execute as @e[tag=elec_ground] at @s store result score @s rng run random value 0..359
execute store result entity @e[tag=elec_ground,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result score @e[tag=elec_ground,limit=1,sort=nearest] weapon_level run scoreboard players get @s weapon_level

playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 2
function entities:item_display/elec_shot/del
particle flash