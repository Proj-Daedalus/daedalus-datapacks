execute if score @s flare_color matches 1 run title @s actionbar [{"text":"Reloading... | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"flare_ammo"},"color":"blue","underlined":true},{"text":"/","color":"gold"},{"text":"1","color":"blue","underlined":true}]

execute if score @s flare_color matches 2 run title @s actionbar [{"text":"Reloading... | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"flare_ammo"},"color":"green","underlined":true},{"text":"/","color":"gold"},{"text":"1","color":"green","underlined":true}]

execute if score @s flare_color matches 3 run title @s actionbar [{"text":"Reloading... | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"flare_ammo"},"color":"red","underlined":true},{"text":"/","color":"gold"},{"text":"1","color":"red","underlined":true}]

execute if score @s flare_color matches 4 run title @s actionbar [{"text":"Reloading... | Ammo: ","color":"gold"},{"score":{"name":"@s","objective":"flare_ammo"},"color":"white","underlined":true},{"text":"/","color":"gold"},{"text":"1","color":"white","underlined":true}]