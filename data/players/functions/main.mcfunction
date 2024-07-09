execute if score @s fungus_click matches 1.. run function players:fungus_click
execute if score @s carrot_click matches 1.. run function players:carrot_click

# ------------------ #
#stun stick
# ------------------ #

execute if predicate players:holding/stun_stick run function special_items:weapon/stunstick/main
execute if score @s stunstick_active matches 1.. unless predicate players:holding/stun_stick run scoreboard players set @s stunstick_active 0
execute unless score @s stunstick_active matches 1.. unless score @s stunstick_charge matches 300.. run function special_items:weapon/stunstick/regen


# ------------------ #
#guns
# ------------------ #
execute if score @s crossbow_use matches 1.. run function players:crossbow
execute if predicate players:holding/ranged/gun run function special_items:gun_ammo/main
execute unless predicate players:holding/ranged/gun if predicate players:holding/ranged/offhand/gun run function special_items:gun_ammo/main
# ------------------ #
#Launcher
# ------------------ #
execute if predicate players:holding/ranged/elec_gun run function special_items:weapon/elec_gun/main
execute if predicate players:holding/ranged/offhand/elec_gun unless predicate players:holding/data/crossbow_main run function special_items:weapon/elec_gun/main
execute unless predicate players:movement/sneaking run scoreboard players remove @s[scores={elec_gun_charge=1..}] elec_gun_charge 1
# ------------------ #
# Flare Gun
# ------------------ #
execute if predicate players:holding/ranged/flare_gun run function special_items:weapon/flare_gun/main
execute if predicate players:holding/ranged/offhand/flare_gun unless predicate players:holding/data/crossbow_main run function special_items:weapon/flare_gun/main


# ------------------ #
#weapon level
# ------------------ #
execute store result score @s weapon_level run data get entity @s SelectedItem.tag.weapon_level

# ------------------ #
#all cooldowns
# ------------------ #
scoreboard players remove @s[scores={elec_gun_cd=1..}] elec_gun_cd 1
scoreboard players remove @s[scores={flare_cd=1..}] flare_cd 1
scoreboard players remove @s[scores={smoke_bomb_cd=1..}] smoke_bomb_cd 1
scoreboard players remove @s[scores={flashbang_cd=1..}] flashbang_cd 1
scoreboard players remove @s[scores={molotov_cd=1..}] molotov_cd 1
scoreboard players remove @s[scores={shock_grenade_cd=1..}] shock_grenade_cd 1

execute unless score @s fuck_you_immune matches -2147483648..2147483647 run scoreboard players set @s fuck_you_immune 0