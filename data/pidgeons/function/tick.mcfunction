#execute as @e[type=interaction] at @s run summon item_display ~ ~ ~ {item:{id:stone,components:{item_model:"pidgeons:pidgeon_sitting"}}} 

execute as @e[nbt={Tags:["new_pidgeon"]}] run function pidgeons:use_pidgeon2/assign_pidgeon_id