tag @s add flash_del
execute anchored eyes positioned ^ ^ ^ as @e[gamemode=!spectator,tag=!flashbang_immune,distance=..15,type=!#mobs:non_alive,tag=!carried_weaponry_immune] facing entity @s eyes run function entities:item_display/flashbang_on/loop/start

kill @s
particle flash ~ ~ ~ 2 2 2 1 20 force
execute facing ^ ^ ^ run function particles:ring {"id":firework}
execute facing ^ ^ ^ run function particles:ring_small {"id":firework}
execute facing ^ ^ ^ run function particles:ring_large {"id":firework}

playsound minecraft:entity.guardian.death player @a ~ ~ ~2 2
playsound entity.generic.explode player @a ~ ~ ~ 2 2
playsound minecraft:entity.allay.item_thrown player @s ~ ~ ~ 2 2
