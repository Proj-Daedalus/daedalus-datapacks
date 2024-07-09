execute unless entity @s[tag=owner_tagged] run function entities:arrows/owner
execute unless entity @s[tag=arrow.inground] if entity @s[nbt={inGround:1b}] run tag @s add arrow.inground
