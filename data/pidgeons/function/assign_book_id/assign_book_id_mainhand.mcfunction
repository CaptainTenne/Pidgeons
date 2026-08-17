#Save scoreboard to pidgeons:temp.book_id_counter
execute store result storage pidgeons:temp book_id_counter int 1 run scoreboard players get counter book_id

#Set book ID checkmark
item modify entity @s weapon.mainhand {function:"minecraft:set_custom_data",tag:{book_id_set:true}}

#Set book ID
item modify entity @s weapon.mainhand {function:"minecraft:copy_custom_data",source:{type:"minecraft:storage",source:"pidgeons:temp"},ops:[{source:"book_id_counter",target:"book_id",op:"replace"}]}

#Store Book using item's book_id minecraft:custom_data component
execute run function pidgeons:assign_book_id/store_book_mainhand with entity @s SelectedItem.components."minecraft:custom_data"

#Increase scoreboard
scoreboard players add counter book_id 1