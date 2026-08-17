execute at @s run playsound item.bundle.insert player @a ~ ~ ~

#Save scoreboard to pidgeons:temp.pidgeon_id_counter
execute store result storage pidgeons:temp pidgeon_id_counter int 1 run scoreboard players get counter pidgeon_id

#Set pidgeon ID
scoreboard players operation @n[tag=new_pidgeon] pidgeon_id = counter pidgeon_id

#Rotate towards player
execute at @s run tp @s ~ ~ ~ facing entity @p
data modify entity @s Rotation[1] set value 0 

#Spawn display and interaction with pidgeon ID
execute at @s run function pidgeons:use_pidgeon2/assign_children with entity @s

#Set pidgeon ID checkmark
tag @s remove new_pidgeon
tag @s add active_pidgeon

#Increase scoreboard
scoreboard players add counter pidgeon_id 1