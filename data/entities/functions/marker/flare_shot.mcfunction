execute unless entity @s[tag=flare_long] run function entities:marker/flare_shot/normal
execute if entity @s[tag=flare_long] run function entities:marker/flare_shot/long

execute positioned ^ ^ ^ run function entities:marker/flare_shot/particle
execute positioned ^ ^ ^1 run function entities:marker/flare_shot/particle