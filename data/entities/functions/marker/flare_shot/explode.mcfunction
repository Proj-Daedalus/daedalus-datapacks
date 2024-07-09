execute if score @s flare_color matches 1 run summon firework_rocket ~ ~ ~ {Life:1,LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;255,255],FadeColors:[I;41727]}]}}}}
execute if score @s flare_color matches 2 run summon firework_rocket ~ ~ ~ {Life:1,LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;65280,65280],FadeColors:[I;35328]}]}}}}
execute if score @s flare_color matches 3 run summon firework_rocket ~ ~ ~ {Life:1,LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16711680,16711680],FadeColors:[I;8716288]}]}}}}
execute if score @s flare_color matches 4 run summon firework_rocket ~ ~ ~ {Life:1,LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16777215,16777215],FadeColors:[I;11250603]}]}}}}

execute as @e[type=!#mobs:non_alive,distance=..4] run damage @s 4 fireworks

particle flash ~ ~ ~ 2 2 2 5 20 force
scoreboard players reset @s ai_timer
kill @s

execute facing ^ ^1 ^ run function particles:ring {"id":firework}
execute facing ^ ^1 ^ run function particles:ring_small {"id":firework}
execute facing ^ ^1 ^ run function particles:ring_large {"id":firework}