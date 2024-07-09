execute store result score @s elec_gun_cd2 run scoreboard players get @s elec_gun_cd
scoreboard players operation @s elec_gun_cd2 %= #10 const


execute if score @s elec_gun_cd2 matches 8.. run title @s actionbar [{"text":"Reloading. | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"elec_gun_ammo"},"color":"blue"},{"text":"/","color":"gold"},{"text":"16","color":"blue"}]
execute if score @s elec_gun_cd2 matches 4..7 run title @s actionbar [{"text":"Reloading.. | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"elec_gun_ammo"},"color":"blue"},{"text":"/","color":"gold"},{"text":"16","color":"blue"}]
execute if score @s elec_gun_cd2 matches 0..3 run title @s actionbar [{"text":"Reloading... | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"elec_gun_ammo"},"color":"blue"},{"text":"/","color":"gold"},{"text":"16","color":"blue"}]