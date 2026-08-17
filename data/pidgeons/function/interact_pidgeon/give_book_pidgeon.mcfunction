#Edit model to scroll
data modify entity @s item.components."minecraft:item_model" set value "pidgeons:pidgeon_sitting_scroll"

#Deactivate pidgeon
tag @s remove active_pidgeon
tag @s add used_pidgeon 

#Deactive pidgeon children
execute on passengers run tag @s remove active_pidgeon_child
execute on passengers run tag @s add used_pidgeon_child 

#Set book ID from given item (SHOULD BE FIXED)
scoreboard players set @s book_id 1

