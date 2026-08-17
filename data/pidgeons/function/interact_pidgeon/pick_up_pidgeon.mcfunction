#Sound cause nice
execute at @s run playsound minecraft:item.bundle.remove_one

#Return item (SHOULD BE WITH DATA)
give @s minecraft:chicken_spawn_egg[rarity=uncommon,item_name="Pidgeon",item_model="pidgeons:pidgeon",entity_data={item:{id:"minecraft:stone",components:{item_model:"pidgeons:pidgeon_sitting"}},id:"minecraft:item_display",Tags:["new_pidgeon"],shadow_radius:0.325}]

#Kill children
execute as @n[nbt={interaction:{}}] on vehicle run function pidgeons:interact_pidgeon/pidgeon_delete

#Clear interaction for readability
execute as @n[nbt={interaction:{}}] run data remove entity @s interaction

#Revoke advancement
advancement revoke @s only pidgeons:interact_pidgeon_pickup