execute unless items entity @s weapon.mainhand minecraft:book run function pidgeons:use_sealed_scroll/return_sealed_scroll {hand:weapon.offhand}
execute if items entity @s weapon.mainhand minecraft:book run function pidgeons:use_sealed_scroll/return_sealed_scroll {hand:weapon.mainhand} 
