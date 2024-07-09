
summon item_display ~ ~ ~ {Tags:["elec_shot"],Passengers:[{id:"minecraft:item_display",Glowing:0b,Tags:["elec_display"],item:{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:12300}}}]}

execute as @e[tag=elec_shot,limit=1,sort=nearest] at @s run teleport @s ~ ~ ~ facing entity @p eyes
scoreboard players set @e[tag=elec_shot,limit=1,sort=nearest] weapon_level 5

function particles:lightning_line_rand {len:"5",range:"2"}
function particles:lightning_line_rand {len:"5",range:"2"}
function particles:lightning_line_rand {len:"5",range:"2"}

scoreboard players set @s fuck_you_immune 2
playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 1.5
