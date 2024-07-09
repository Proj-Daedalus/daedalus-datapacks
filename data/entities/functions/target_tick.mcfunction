execute if score @s stunned matches 1.. run function entities:target/stunned
execute if entity @s[tag=electrocuted] run function entities:target/electrocuted
execute if score @s elec_dmgcd matches 1.. run function entities:target/elec_dmgcd