#Removes Author (can be disabled)
item modify entity @s weapon.mainhand [{"function": "minecraft:set_book_cover","author": ""}]

#Runs ID Mainhand
execute if items entity @s weapon.mainhand written_book unless items entity @s weapon.mainhand *[custom_data~{book_id_set:true}] run function pidgeons:assign_book_id/assign_book_id_mainhand

#Runs ID Offhand
#execute if items entity @s weapon.offhand written_book unless items entity @s weapon.offhand *[custom_data~{book_id_set:true}] run function pidgeons:assign_book_id/assign_book_id_offhand

#Revokes Advancement
execute run schedule function pidgeons:assign_book_id/assign_book_id_revoke 2t append 