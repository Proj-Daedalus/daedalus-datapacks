scoreboard players operation #weapon_level temp = @s weapon_level

execute as @e[type=!#mobs:non_alive,distance=..5,tag=!electrocution_immune,tag=!carried_weaponry_immune] if predicate mobs:hurt run function special_items:weapon/stunstick/onhit/astarget
