execute if score @s flare_color matches 1 run title @s actionbar [{"text":"Reloading.. | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"flare_ammo"},"color":"blue"},{"text":"/","color":"gold"},{"text":"1","color":"blue"}]

execute if score @s flare_color matches 2 run title @s actionbar [{"text":"Reloading.. | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"flare_ammo"},"color":"green"},{"text":"/","color":"gold"},{"text":"1","color":"green"}]

execute if score @s flare_color matches 3 run title @s actionbar [{"text":"Reloading.. | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"flare_ammo"},"color":"red"},{"text":"/","color":"gold"},{"text":"1","color":"red"}]

execute if score @s flare_color matches 4 run title @s actionbar [{"text":"Reloading.. | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"flare_ammo"},"color":"white"},{"text":"/","color":"gold"},{"text":"1","color":"white"}]