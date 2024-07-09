particle flash
playsound block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 2
tag @s add target
damage @s 5 lightning_bolt
scoreboard players set @s stunned 100
scoreboard players set @s elec_dmgcd 160