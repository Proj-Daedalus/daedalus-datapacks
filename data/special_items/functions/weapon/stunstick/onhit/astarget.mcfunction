scoreboard players set #stunstick? temp 0
execute on attacker if predicate players:holding/stun_stick if score @s stunstick_active matches 1.. run scoreboard players set #stunstick? temp 1

execute if score @s minimum_weaponry_hurt_level <= #weapon_level temp if score #stunstick? temp matches 1 unless score @s stunned matches 1.. unless score @s elec_dmgcd matches 1.. run function special_items:weapon/stunstick/onhit/stun