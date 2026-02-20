#playsound block.note_block.basedrum
tellraw @s "Identified Offhand"
item modify entity @s weapon.offhand {function:"set_custom_data",tag:{"book_id":{}}}