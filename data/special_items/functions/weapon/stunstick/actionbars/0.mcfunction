execute unless score @s stunstick_charge matches -2147483648..2147483647 run scoreboard players set @s stunstick_charge 300
scoreboard players operation @s stunstick_perc = @s stunstick_charge
scoreboard players operation @s stunstick_perc /= #3 const

execute if score @s stunstick_perc matches 100 run title @s actionbar [{"text":"Battery: ","color":"gold"},{"text":"100% ","color":"green"},{"text":"[","color":"gold"},{"text":"█","color":"green"},{"text":"|","color":"gold"},{"text":"█","color":"green"},{"text":"|","color":"gold"},{"text":"█","color":"green"},{"text":"|","color":"gold"},{"text":"█","color":"green"},{"text":"]","color":"gold"}]

execute if score @s stunstick_perc matches 76..99 run title @s actionbar [{"text":"Battery: ","color":"gold"},{"score":{"name":"@s","objective":"stunstick_perc"},"color":"blue"},{"text":"% ","color":"blue"},{"text":"[","color":"gold"},{"text":"█","color":"blue"},{"text":"|","color":"gold"},{"text":"█","color":"blue"},{"text":"|","color":"gold"},{"text":"█","color":"blue"},{"text":"|","color":"gold"},{"text":"█","color":"blue"},{"text":"]","color":"gold"}]

execute if score @s stunstick_perc matches 51..75 run title @s actionbar [{"text":"Battery: ","color":"gold"},{"score":{"name":"@s","objective":"stunstick_perc"},"color":"blue"},{"text":"% ","color":"blue"},{"text":"[","color":"gold"},{"text":"█","color":"blue"},{"text":"|","color":"gold"},{"text":"█","color":"blue"},{"text":"|","color":"gold"},{"text":"█","color":"blue"},{"text":"|","color":"gold"},{"text":"█","color":"gray"},{"text":"]","color":"gold"}]

execute if score @s stunstick_perc matches 26..50 run title @s actionbar [{"text":"Battery: ","color":"gold"},{"score":{"name":"@s","objective":"stunstick_perc"},"color":"blue"},{"text":"% ","color":"blue"},{"text":"[","color":"gold"},{"text":"█","color":"blue"},{"text":"|","color":"gold"},{"text":"█","color":"blue"},{"text":"|","color":"gold"},{"text":"█","color":"gray"},{"text":"|","color":"gold"},{"text":"█","color":"gray"},{"text":"]","color":"gold"}]

execute if score @s stunstick_perc matches 1..25 run title @s actionbar [{"text":"Battery: ","color":"gold"},{"score":{"name":"@s","objective":"stunstick_perc"},"color":"blue"},{"text":"% ","color":"blue"},{"text":"[","color":"gold"},{"text":"█","color":"blue"},{"text":"|","color":"gold"},{"text":"█","color":"gray"},{"text":"|","color":"gold"},{"text":"█","color":"gray"},{"text":"|","color":"gold"},{"text":"█","color":"gray"},{"text":"]","color":"gold"}]

execute if score @s stunstick_perc matches 0 run title @s actionbar [{"text":"Battery: ","color":"gold"},{"text":"0% ","color":"red"},{"text":"[","color":"gold"},{"text":"█","color":"gray"},{"text":"|","color":"gold"},{"text":"█","color":"gray"},{"text":"|","color":"gold"},{"text":"█","color":"gray"},{"text":"|","color":"gold"},{"text":"█","color":"gray"},{"text":"]","color":"gold"}]
