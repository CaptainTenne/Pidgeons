#Triggered by advancement: give_book.json

#Sound cause nice
execute at @s run playsound minecraft:block.chiseled_bookshelf.insert

#Edit pidgeon itself
execute as @n[nbt={interaction:{}}] on vehicle run function pidgeons:interact_pidgeon/give_book_pidgeon

#Clear interaction for readabiliy
execute as @n[nbt={interaction:{}}] run data remove entity @s interaction

#Remove book
item modify entity @s weapon.mainhand {function: set_count,add:true,count:-1}

#Revoke advancement
advancement revoke @s only pidgeons:give_book