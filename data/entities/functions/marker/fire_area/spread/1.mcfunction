execute positioned ~ ~ ~ if block ~ ~ ~ air unless block ~ ~ ~ fire unless entity @e[tag=fire_spread,distance=..0.1] align xyz run summon block_display ~0.5 ~ ~0.5 {Tags:["fire_spread"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:fire"}}

#execute rotated 0 0 positioned ^ ^ ^1 run function entities:marker/fire_area/spread/raycast/1
#execute rotated 90 0 positioned ^ ^ ^1 run function entities:marker/fire_area/spread/raycast/1
#execute rotated 180 0 positioned ^ ^ ^1 run function entities:marker/fire_area/spread/raycast/1
#execute rotated 270 0 positioned ^ ^ ^1 run function entities:marker/fire_area/spread/raycast/1