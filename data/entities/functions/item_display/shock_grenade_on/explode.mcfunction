tag @s add shock_del
execute anchored eyes positioned ^ ^ ^ as @e[distance=..5,type=!#mobs:non_alive,tag=!carried_weaponry_immune,tag=!electrocution_immune,scores={elec_dmgcd=0}] facing entity @s eyes run function entities:item_display/shock_grenade_on/loop/start

kill @s
execute positioned ~ ~1 ~ run function particles:lightning_line_rand {len:"5",range:"2"}
execute positioned ~ ~1 ~ run function particles:lightning_line_rand {len:"5",range:"2"}
execute positioned ~ ~1 ~ run function particles:lightning_line_rand {len:"5",range:"2"}


particle flash
particle explosion ~ ~ ~ 0 0 0 2 5 force

playsound entity.generic.explode player @a ~ ~ ~ 2 2
playsound entity.firework_rocket.blast player @a ~ ~ ~ 2 0
playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 2 2
