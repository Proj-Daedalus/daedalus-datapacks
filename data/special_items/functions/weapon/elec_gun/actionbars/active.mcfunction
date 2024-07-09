execute unless score @s elec_gun_ammo matches -2147483648..2147483647 run scoreboard players set @s elec_gun_ammo 0

title @s actionbar [{"text":"Ready to Fire! | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"elec_gun_ammo"},"color":"blue"},{"text":"/","color":"gold"},{"text":"16","color":"blue"}]