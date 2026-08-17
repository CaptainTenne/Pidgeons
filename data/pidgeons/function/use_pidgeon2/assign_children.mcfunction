# Summon children with new_pidgeon_child tag
summon frog ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",duration:1000000000,show_particles:false}],NoAI:true,Invulnerable:true,Silent:true,Tags:["new_pidgeon_child"]}
summon interaction ~ ~ ~ {height:0.55,width:0.55,Tags:["new_pidgeon_child"]}

#Saddle children with new_pidgeon_child tag
execute as @e[tag=new_pidgeon_child] run function pidgeons:use_pidgeon2/saddle_children

#ID children using scoreboard
execute on passengers run scoreboard players operation @s pidgeon_id = counter pidgeon_id

#Replace tag
execute on passengers run tag @s remove new_pidgeon_child
execute on passengers run tag @s add active_pidgeon_child