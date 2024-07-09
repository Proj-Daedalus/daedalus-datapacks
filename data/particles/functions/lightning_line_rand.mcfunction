summon marker ~ ~ ~ {Tags:["lightning_line","rand"]}

$execute as @e[tag=lightning_line,tag=!data,limit=1] run scoreboard players set @s lightning_range $(range)
$execute as @e[tag=lightning_line,tag=!data,limit=1] run scoreboard players set @s lightning_len $(len)
execute as @e[tag=lightning_line,tag=!data,limit=1] run tag @s add data