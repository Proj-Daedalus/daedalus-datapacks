kill @s
particle minecraft:campfire_signal_smoke ~ ~ ~ 2 2 2 0.01 1000 force
particle minecraft:large_smoke ~ ~ ~ 2 2 2 0.01 1000 force

playsound block.fire.extinguish player @a ~ ~ ~ 2 1
playsound entity.generic.explode player @a ~ ~ ~ 2 2