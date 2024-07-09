execute rotated ~ 0 unless block ^ ^ ^-1 #clear_d unless block ~ ~-1 ~ #clear_d run teleport @s ~ ~1 ~
execute rotated ~ 0 unless block ^ ^ ^-1 #clear_d if block ~ ~-1 ~ #clear_d run teleport @s ~ ~-1 ~

execute rotated ~ 0 if block ^ ^ ^-1 #clear_d run tag @s add wall
execute rotated ~ 0 if block ^ ^ ^-1 #clear_d run teleport @s ^ ^ ^-0.05 ~ 0