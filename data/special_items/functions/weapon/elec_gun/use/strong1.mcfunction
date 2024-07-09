
summon item_display ~ ~ ~ {Tags:["elec_shot"],Passengers:[{id:"minecraft:item_display",Glowing:1b,Tags:["elec_display"],item:{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:12300}}}]}

execute store result entity @e[tag=elec_shot,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=elec_shot,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]
execute store result score @e[tag=elec_shot,limit=1,sort=nearest] Rot1 run data get entity @s Rotation[1]
scoreboard players set @e[tag=elec_shot,limit=1,sort=nearest] weapon_level 10

function particles:lightning_line {len:"7",range:"2"}
function particles:lightning_line {len:"7",range:"2"}
function particles:lightning_line {len:"7",range:"2"}
function particles:lightning_line {len:"7",range:"2"}
function particles:lightning_line {len:"7",range:"2"}

execute positioned ^ ^ ^1 facing ^ ^1 ^ run function particles:ring {id:"end_rod"}

scoreboard players set @s fuck_you_immune 2
playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 1.5
playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 1 2