execute unless block ~ ~ ~ minecraft:air run return run function pidgeons:use_pidgeon/use_pidgeon_place with entity @s
scoreboard players remove @s ray_steps 1
execute if score @s ray_steps matches 1.. positioned ^ ^ ^0.1 run function pidgeons:use_pidgeon/use_pidgeon_ray